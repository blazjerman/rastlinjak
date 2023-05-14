import axios from '../../config/axios';
import { getMyEsp } from './GetEsp'

export const getHumidity = async () => {
    const esp_id = await getMyEsp()
    const res = (await axios.get(`/sensors/humidity?ESP32_id=_${esp_id}`))?.data?.humData
    ?.slice(0,10)
    ?.map(data => ({...data, time: new Date(data.time).toLocaleString()}))
    console.log(res);
    return res
}