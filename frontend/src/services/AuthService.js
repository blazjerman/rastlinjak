import axios from '../config/axios';

const BASE_URL = '/auth'

const login = async ({email, password}) => {
  const response = await axios.post(BASE_URL + '/login', {email, password});
  if (response.data) {
    localStorage.setItem('user', JSON.stringify(response.data.user));
    localStorage.setItem('token', JSON.stringify(response.data.token));
  }
  return response.data;
}

const register = async ({name, surname, email, password}) => {
  const response = await axios.post(BASE_URL + '/register', {name, surname, email, password});
  localStorage.setItem('user', JSON.stringify(response.data.user));
  localStorage.setItem('token', JSON.stringify(response.data.token));
  return response.data;
}

const logout = () => {
  localStorage.removeItem('user');
  localStorage.removeItem('token');
}

const AuthService = {login, register, logout}

export default AuthService;