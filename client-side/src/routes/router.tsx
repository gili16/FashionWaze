import React from 'react';
import { Navigate as BigNav, Navigate, createBrowserRouter, useNavigate } from "react-router-dom";
import Layout from "../layout/Layout";
import HomePage from '../pages/HomePage';
import MekimiExtension from '../pages/MekimiExtension';


export const router = createBrowserRouter([
    {
        path: '/',
        element: <Layout />,
        children: [
            {
                path: '/',
                element: <HomePage />,
            },

            {
                path:'/mekimiExtension',
                element: <MekimiExtension/>
            }


        ]
    },

    {
        path: '*',
        element: <Navigate to="/" />,
    },

]);