import axios from '../../config/axios';
import { getMyEsp } from './GetEsp'

export const addAutomatizacija = async (data) => {
    const esp_id = await getMyEsp()
    const res = (await axios.post(`/automations?id=${esp_id}`, {
        ...data
    }))?.data
    return res
}