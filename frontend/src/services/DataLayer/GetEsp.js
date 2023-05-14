import axios from '../../config/axios';

export const getMyEsp = async () => {
    const res = await axios.get(`/esp/myesps`)
    return res?.data?.esps?.[0]?.id
}