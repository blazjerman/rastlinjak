import axios from '../../config/axios';
import { getMyEsp } from './GetEsp'

export const microcontrollerOutputs = async () => {
    const esp_id = await getMyEsp()
    const res = (await axios.get(`/esp/outputs?id=${esp_id}`))?.data
    return res
}