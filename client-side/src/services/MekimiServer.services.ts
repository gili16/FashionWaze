import axios from '../utils/axios';
export const getPictures = async () => {
    const response = await axios.get(`get_all_pictures`)
    const pictures =  response.data
    return pictures
}
export const getSimiliars= async (path:string) => {
    const response = await axios.post(`get_images`, {'path':path})
    const similiars = response.data
    return similiars
}
export const getAvailablesParts= async () => {
    const response = await axios.get(`available_parts`)
    console.log(response)
    const availableParts = response.data
    return availableParts
}
export const getPartImages= async (part:number) => {
    const response = await axios.get(`get_part_images/${part}`)
    const partImages = response.data
    return partImages
}