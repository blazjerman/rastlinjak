import axios from '../../config/axios';
import { getMyEsp } from './GetEsp'

export const allAutomatizacije = async () => {
    const esp_id = await getMyEsp()
    const res = (await axios.get(`/automations?id=${esp_id}`))?.data?.automations
    console.log(res);
    return res
}