import { Outlet } from "react-router-dom"
import Header from './header';
import Footer from "./footer";
export default function Layout(){
    return<>
    <header><Header/></header>
        <main>
            <Outlet />
        </main>
    <footer><Footer /></footer>
    </>
}