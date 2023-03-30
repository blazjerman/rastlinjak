import {useState, useEffect} from 'react';
import {useNavigate} from 'react-router-dom';
import AuthService from '../services/AuthService';

const Overview = () => {
  const user = JSON.parse(localStorage.getItem('user'));
  const navigate = useNavigate();

  useEffect(() => {
    if (!user) {
      navigate('/login')
    }
  }, [navigate, user]);

  const logout = () => {
    AuthService.logout();
    navigate('/login');
  }

  // Ne vem kako bi drugače redirectal na login preden se rendera h3 (če ne vrže error user undefined)
  if (!user) {
    return (<></>)
  }

  return (
    <section>
      <h3>Hello {user.name}</h3>
      <button onClick={logout}>Logout</button>
    </section>
  )
}

export default Overview;