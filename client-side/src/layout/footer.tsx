import * as React from 'react';
import CssBaseline from '@mui/material/CssBaseline';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import Box from '@mui/material/Box';
import Typography from '@mui/material/Typography';
import Container from '@mui/material/Container';
import Link from '@mui/material/Link';
import { Copyright } from '@mui/icons-material';
import image from '../images/9.png';
import { Avatar, Card, CardMedia } from '@mui/material';
export default function Footer(){
   return<> 
   <Box

          component="footer"
          display="flex"
          flexDirection="column"
          justifyContent="center"
          alignItems="center"
          gap={3}
          sx={{
            py: 3,
            px: 2,
            mt: 'auto',
           }
        }
        >       
      
          <Container maxWidth="sm">

            <Typography variant="body1">
              
            </Typography>
            <Copyright />
          </Container>
        </Box>
        </>;
}