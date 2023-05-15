import {useState} from 'react';
import {useNavigate} from 'react-router-dom';
import AuthService from '../../services/AuthService';
import './style.css'

const Login = () => {
  const [formData, setFormData] = useState({
    email: '',
    password: ''
  });
  
  const navigate = useNavigate();
  
  const {email, password} = formData;

  const handleChange = (e) => {
    setFormData((prevState) => ({
      ...prevState,
      [e.target.name]: e.target.value
    }));
  }

  const handleSubmit = async (e) => {
    e.preventDefault();
    const data = {email, password};
    // axios returns error if response.status is not OK
    try {
      const response = await AuthService.login(data);
      navigate('/');
      
    } catch (err) {
      console.log(err.response.data.message);
    }
  }

  return (
    <section className="login-form">
      <form onSubmit={handleSubmit}>
        <div className="form-group">
          <input 
          type="email"
          id = "email"
          name="email"
          className='input-field'
          value={email}
          placeholder="email"
          onChange={handleChange} />
        </div>
        <div className="form-group">
          <input 
          type="password"
          id = "passord"
          name="password"
          className='input-field'
          value={password}
          placeholder="password"
          onChange={handleChange} />
        </div>
        <button className="submit-btn" type="submit-btn">
          Login
        </button>
      </form>
    </section>
  )
}

export default Login;