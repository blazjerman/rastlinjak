import {useState, useEffect} from 'react';
import { Routes, Route } from "react-router-dom";
import {useNavigate} from 'react-router-dom';
import NavBar from "../../components/NavBar";
import './style.css'
import Statistika from '../Statistika'
import Kamere from '../Kamere'
import Upravljanje from '../Upravljanje'
import Automatizacija from '../Automatizacija'
import Obvestila from '../Obvestila'


const Overview = () => {
  const user = JSON.parse(localStorage.getItem('user'));
  const navigate = useNavigate();

  useEffect(() => {
    if(!user) navigate('/login')
  }, [user]);
  
  if (!user) {
    return(<></>)
  }
  return (
    <section>
      <h3>{user.name}'s rastlinjak</h3>
      <NavBar/>
      <Routes>
        <Route element={<Statistika />} path=''>Statistika</Route>
        <Route element={<Kamere />} path='kamere'>Kamere</Route>
        <Route element={<Upravljanje />} path='upravljanje'>Upravljanje</Route>
        <Route element={<Automatizacija />} path='automatizacija'>Automatizacija</Route>
        <Route element={<Obvestila />} path='obvestila'>Obvestila</Route>
      </Routes>
    </section>
  )
}

export default Overview;