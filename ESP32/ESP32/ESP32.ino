#include <WiFi.h>
#include <HTTPClient.h>

#include <Adafruit_BMP280.h>
#include "DHT.h"


//Prikaži potek v terminalu:
const bool LOG = false;

//Podatki za se povezat na WiFi:
const char* ssid = "TPJerman";
const char* wifi_password = "pikicaintoncek";

//Podatki naslova:
const String php_server = "https://www.studenti.famnit.upr.si/~89201094/rastlinjak/ESP32/ESP32_PHP_requests/";
const String php_password = "geselce";


//Podatki ESP-ja:
const int check_updates = 10000;//v milisekundah
const int WiFi_reconect_interval = 300;//v milisekundah
const int php_try_interval = 300;//v milisekundah

String ESP32_id;
long update_interval = 60;//V sekundah
int outputs = 0;

//Interupt
volatile bool interupt = true; //Pri priklopu pošlji podatke senzorjev
hw_timer_t *timer = NULL;



//DODAJANJE_SENZORJEV_IN_OUTPUTOV-------------------------------------------------------------------------------------------------------

//Podatki senzorjev:
//DHT11
DHT dht(15, DHT11);
//BMP280 
Adafruit_BMP280 bme; 


void initSensors(){
  //DHT11
  dht.begin();
  //BMP280
  if (!bme.begin(0x76)) {
    if(LOG)Serial.println("Could not find a valid BMP280 sensor, check wiring!");
  }
}

//Pošlji requeste za vsak senzor posebaj (malo neumno je to, da se dela n requestov):
//Vsak senzor ima svoj id.

void sendSensorsData(){
  //DHT11
  sendSensorData("temperature",String(dht.readTemperature()),"0");
  sendSensorData("humidity",String(dht.readHumidity()),"0");
  //BMP280
  sendSensorData("temperature",String(bme.readTemperature()),"1");
  sendSensorData("pressure",String(bme.readPressure()),"1");
  sendSensorData("altitude",String(bme.readAltitude()),"1");
}

void initOutputs(){
}

//Posodobi senzorje ob requestu (v outputs je vsak bit en output prvi bit je za testiranje, ta kontrlolira LED_BUILTIN.):
void updateOutputs(){
  if(outputs&0x1==1){
      digitalWrite(LED_BUILTIN, HIGH);
  }else{
      digitalWrite(LED_BUILTIN, LOW);
  }
}
//DODAJANJE_SENZORJEV_IN_OUTPUTOV-------------------------------------------------------------------------------------------------------




//SPODNJE KODE NE TIKAJ!!!

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  if (LOG){
    Serial.begin(9600);
    Serial.println("Starting....");
  }
  initWiFi(true);
  getId();
  initSensors();
  initOutputs();
  initInterupt();
}


void loop() {
  initWiFi(false);
  updateLocalData();
  checkInterupt();
  delay(check_updates);
}


//Interupt (Obvezno more bit pred initInterupt()):
void IRAM_ATTR onTimer() {
  interupt = true;
}

//Nastavi interapt:
void initInterupt(){
  timer = timerBegin(0,8000, true);
  timerAttachInterrupt(timer, &onTimer, true);
  updateInterapterTime();
}

//Posodobi lokalne podatke:
void updateLocalData(){

  //Posodobi outpute:
  int outputs_data = getOrSendData("get_outputs.php", "ESP32_id="+ESP32_id).toInt();
  if(outputs!=outputs_data){
    outputs=outputs_data;
    updateOutputs();
  }
  if(LOG)Serial.println("Outputs bits: "+String(outputs));  

  //Posodobi interval posodobitev:
  int update_interval_data = getOrSendData("get_update_interval.php", "ESP32_id="+ESP32_id).toInt();
  if(update_interval!=update_interval_data){
    update_interval=update_interval_data;
    updateInterapterTime();
  }
  if(LOG)Serial.println("Update every: "+String(update_interval)+" Second.");
}

//Posodobi čas interapterja
void updateInterapterTime(){
  timerAlarmDisable(timer);
  timerAlarmWrite(timer, 10000*update_interval, true);
  timerAlarmEnable(timer);
}

//Preveri, če se je zgodil interupt in zaženi pošiljanje podatkov senzorjev:
void checkInterupt(){
  if (interupt == false)return; 
  interupt = false;
  sendSensorsData();
}

//Poveži se na WiFi:
void initWiFi(bool first_time){
  
  if(WiFi.status()==WL_CONNECTED)return;

  if(LOG && !first_time)Serial.println("WiFi connection lost!!!");  
  
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, wifi_password);
  
  if(LOG)Serial.println("Connecting to WiFi:");
  
  while (WiFi.status() != WL_CONNECTED) {
    
    digitalWrite(LED_BUILTIN, HIGH);
    delay(WiFi_reconect_interval/2);
    digitalWrite(LED_BUILTIN, LOW);
    delay(WiFi_reconect_interval/2);

    if(LOG)Serial.print(".");

  }

  updateOutputs();  

  if(LOG)Serial.println("\nSuccesful connection! Ip: "+String(WiFi.localIP()));

}


//Pridobi id ESP-ja:
void getId(){
  ESP32_id = getOrSendData("get_ESP32_id.php","mac="+WiFi.macAddress());
  if(LOG)Serial.println("Id je: "+ESP32_id);
}


//Pridobi/pošlji podatke iz php-ja (Poskušaj, dokler jih ne dobiš/pošlješ):
String getOrSendData(String php_file, String request){

  HTTPClient http;
  http.begin(php_server+php_file+"?password="+php_password+"&"+request);
  
  while(true){

    int httpCode = http.GET();
    
    if(httpCode > 0) {

      if(httpCode == HTTP_CODE_OK) {
        
          String data = http.getString();
          http.end();
          if(LOG)Serial.println("Succesful request "+php_file+": "+data);
          return data;  
           
      }else if(LOG)Serial.printf("[HTTP] GET... code: %d\n", httpCode);
    }else if(LOG)Serial.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());

    delay(php_try_interval);
    initWiFi(false);    

  }
}


//Pošlji na bazo podatke senzorja:
void sendSensorData(String name,String value,String sensor_id){
  getOrSendData("set_sensors_data.php", "name="+name+"&value="+value+"&ESP32_id="+ESP32_id+"&sensor_id="+sensor_id);
}

