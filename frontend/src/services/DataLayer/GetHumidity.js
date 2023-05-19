import axios from '../../config/axios';
import { getMyEsp } from './GetEsp'

export const getHumidity = async () => {
    const esp_id = await getMyEsp()
    const res = (await axios.get(`/sensors/humidity?ESP32_id=_${esp_id}`))?.data?.humData
    ?.filter((data, index) => {return index % 10 === 0})
    ?.map(data => ({...data, time: new Date(data.time).toLocaleString()}))
    return res
}