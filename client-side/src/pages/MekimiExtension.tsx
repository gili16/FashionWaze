import { Button, Grid, ImageList, ImageListItem, Stack } from '@mui/material';
import {ImageObject} from '../types/ImageObject'
import * as React from 'react';
import { useEffect, useState } from 'react';
import { getAvailablesParts, getPartImages, getSimiliars } from '../services/MekimiServer.services';
import { SimiiliarImageObject } from '../types/SimiliarImageObject';
import ClothImage from '../components/ClothImage';
export default function MekimiExtension(){
    const [itemData,setItemData]=useState<ImageObject[]>([])
    const [loaded, setLoaded]=useState(false)
    const [part, setPart]=useState(1)
    const [availableParts,setAvailableParts]=useState(0)
    const [similiar,setSimiliar]=useState<any[]>([])
    const [updates,setUpdates]=useState(0)
    const [pictureUrl, setPictureUrl] = useState<string | null>(null);
    useEffect(()=>{
        if(!loaded){
            Init();
        }
    },[])
    async function Init(){
        try{
            let available=await getAvailablesParts();
            setAvailableParts(Number(available))
            loadPart(Number(available))
            setLoaded(true)
        }catch(e){
            console.error(e)
        }
    }
    useEffect(()=>{console.log(itemData)},[itemData])
    useEffect(()=>{console.log(part)},[part])
    useEffect(()=>{console.log(similiar)},[similiar])
    async function getSimiliar(filename:string){
        try{
        let images=await getSimiliars(filename)
        // setSimiliar([])
        setSimiliar([...images])
        setUpdates(updates+1)
        }catch(e){
            console.error(e)
        }
    }
    async function loadPart(available:number){
        if(part<=available){
            try{
                let images=await getPartImages(part);
                console.log(images)
                setItemData([...itemData,...images])
            }catch(e){
                console.error(e)
            }
            setPart(part+1)

        }
    }
    return <>
        <Grid container spacing={2}>
            <Grid item xs={4}>
                <Stack>
                    <Button onClick={()=>loadPart(availableParts)}>Load More</Button>
                </Stack>
                <ImageList key={updates} sx={{ width: 500, height: 450 }} cols={3} rowHeight={164}>
                {similiar.map((item) => (
                    <ImageListItem key={item.filename}>
                    <ClothImage cloth={item}/>
                    <a target="_blank" href={item.filename}>go to mekimi</a>
                    </ImageListItem>
                ))}
                </ImageList>
            </Grid>
            <Grid item xs={8}>
                <ImageList sx={{ width: 500, height: 450 }} cols={3} rowHeight={164}>
                {itemData.map((item) => (
                    <ImageListItem key={item.filename}>
                    <ClothImage cloth={item} />
                    <Button variant='text' onClick={()=>{getSimiliar(item.filename)}}>Watch Similiars</Button>
                    </ImageListItem>
                ))}
                </ImageList>
            </Grid>
  
        </Grid>
    </>
}