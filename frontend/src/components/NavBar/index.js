import React from 'react';
import './style.css';
import AuthService from '../../services/AuthService';
import { Link } from 'react-router-dom';

import {useNavigate, useLocation } from 'react-router-dom';

function NavBar() {
    const navigate = useNavigate();
    const {pathname} = useLocation()

    const logout = () => {
        AuthService.logout();
        navigate('/login');
      }



  return (
    <nav className="NavBar">
      <ul>
        <li className={pathname === '/' ? 'activeTab' : null}><Link to="/">Statistika</Link></li>
        <li className={pathname === '/kamere' ? 'activeTab' : null}><Link to="/kamere">Kamere</Link></li>
        <li className={pathname === '/upravljanje' ? 'activeTab' : null}><Link to="/upravljanje">Upravljanje</Link></li>
        <li className={pathname === '/automatizacija' ? 'activeTab' : null}><Link to="/automatizacija">Automatizacija</Link></li>
        <button className='logout' onClick={logout}>Logout</button>
      </ul>
    </nav>
  );
}

export default NavBar;