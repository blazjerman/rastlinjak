import axios from '../../config/axios';
import { getMyEsp } from './GetEsp'

export const switchPin = async (pin) => {
    const esp_id = await getMyEsp()
    const res = (await axios.put(`/esp/outputs?id=${esp_id}`, { pin }))?.data
    return res
}