import axios from '../../config/axios';
import { getMyEsp } from './GetEsp'

export const getTemperature = async () => {
    const esp_id = await getMyEsp()
    const res = (await axios.get(`/sensors/temperature?ESP32_id=_${esp_id}`))?.data?.tempData
    ?.slice(0,10)
    ?.map(data => ({...data, time: new Date(data.time).toLocaleString()}))
    return res
}