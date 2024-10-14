import { Autocomplete, Card, CardMedia, TextField } from '@mui/material';
import * as React from 'react';
import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import image from '../images/4.png'
export default function HomePage(){
    const [opstions,setOptions]=useState([
        {
            label:'mekimi'
        }
    ]);
    const navigate=useNavigate();
    return<>
    {/* return ( */}
    <Card>
    <CardMedia
        component="img"
        height="194"
        image={image}
        alt="FashionWaze"
      />
    </Card>
    <Autocomplete
      disablePortal
      id="combo-box-demo"
      onInputChange={(event, newInputValue) => {
        if(newInputValue=='mekimi'){
          navigate('/mekimiExtension');
        }
      }}
      options={opstions}
      sx={{ width: 300 }}
      renderInput={(params) => <TextField {...params} label="Store" />}
    />
  {/* ); */}
    </>
}