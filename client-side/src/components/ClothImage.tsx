import { useEffect, useState } from "react";
import { ImageObject } from "../types/ImageObject";
import { stringToBlob } from "../utils/stringToBlob.utils";
import { Avatar, Button } from "@mui/material";

export default function ClothImage(props:{cloth:ImageObject}){
    const [pictureUrl, setPictureUrl] = useState<string | null>(null);
 
  useEffect(() => {
    const fetchPicture = async () => {
        if(props.cloth!==null&&props.cloth!==undefined){
          try {
              const blob = stringToBlob(props.cloth!.image!,null,null);
              const url = URL.createObjectURL(blob);
              setPictureUrl(url);
          }catch(error){}
        }
    };

    fetchPicture();

  },[props.cloth.image]);

  if (!pictureUrl) {
    return <div>Loading...</div>;
  }

  return <>
  <Avatar alt="Track Image" src={pictureUrl} sx={{width:'100%',height:'50%'}} variant="square"  >
    <img  src={pictureUrl} /></Avatar></>;
}