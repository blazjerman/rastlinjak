import React, {useState, useEffect} from 'react';
import { getTemperature } from '../../services/DataLayer/GetTemperatura'
import { getHumidity } from '../../services/DataLayer/GetHumidity'
import MyChart from '../../components/Chart';
import './style.css'

function Statistika() {

  const [temperature, setTemperature] = useState()
  const [humidity, setHumidity] = useState()

  const getTempetaure = async () => setTemperature(await getTemperature())
  const getHumidityData = async () => setHumidity(await getHumidity())

  useEffect(() => {
    getTempetaure()
    getHumidityData()
  }, []);

  const temperatureData = [
    {
      label: 'Temperature',
      data: temperature
    },
  ]

  const humidityData = [
    {
      label: 'Vlaga',
      data: humidity,
    },
  ]

  return (
    <div className='statistika'>
        {temperature && <MyChart data={temperatureData}/>}
        {humidity && <MyChart data={humidityData}/>}
        {temperature && (
          <div className='stats'>
            <div className='current'>
              <h4>Trenutna temperatura</h4>
              <h1>{temperature[temperature.length-1].value} °C</h1>
            </div>
          </div>
        )}
        {humidity && (
          <div className='stats'>
            <div className='current'>
              <h4>Vlažnost zraka</h4>
              <h1>{humidity[humidity.length-1].value} %</h1>
            </div>
            <div className="current">
              <h4>Vlažnost zemlje</h4>
              <h1>{humidity[Math.ceil(Math.random() * (humidity.length-1))].value} %</h1>
            </div>
          </div>
        )}
        <button className='zgodovina'>Zgodovina statistike</button>
  </div>
  )
}

export default Statistika