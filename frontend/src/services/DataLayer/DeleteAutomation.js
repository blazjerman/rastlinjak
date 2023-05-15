import axios from '../../config/axios';
import { getMyEsp } from './GetEsp'

export const deleteAutomatizacija = async (automation_id) => {
    const esp_id = await getMyEsp()
    const res = (await axios.delete(`/automations?automation_id=${automation_id}&ESP32_id=${esp_id}`))?.data
    return res
}