import axios from '../../config/axios';
import { getMyEsp } from './GetEsp'
import {smooth} from '../../utils/reduce';

export const getTemperature = async () => {
    const esp_id = await getMyEsp()
    let res = (await axios.get(`/sensors/temperature?ESP32_id=_${esp_id}`))?.data?.tempData
    ?.filter((data, index) => {return index % 10 === 0})
    ?.map(data => ({...data, time: new Date(data.time).toLocaleString()}))
    // res = smooth(res, 20)
    return res
}