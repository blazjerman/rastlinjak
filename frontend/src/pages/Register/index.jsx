import {useState} from 'react';
import {useNavigate} from 'react-router-dom';
import AuthService from '../../services/AuthService';

const Register = () => {
  const [formData, setFormData] = useState({
    email: '',
    password: '',
    name: '',
    surname: '',
  });
  
  const navigate = useNavigate();
  
  const {email, password, name, surname} = formData;

  const handleChange = (e) => {
    setFormData((prevState) => ({
      ...prevState,
      [e.target.name]: e.target.value
    }));
  }

  const handleSubmit = async (e) => {
    e.preventDefault();
    const data = { name, surname, email, password };
    // axios returns error if response.status is not OK
    try {
      const response = await AuthService.register(data);
      navigate('/login');
      
    } catch (err) {
      console.log(err.response.data.message);
    }
  }
  return (
    <section className="login-form">
      <form onSubmit={handleSubmit}>
        <div>
          <input
            className='input-field' 
            required
            type="email"
            id = "email"
            name="email"
            value={email}
            placeholder="email"
            onChange={handleChange} 
          />
        </div>
        <div>
          <input
            className='input-field' 
            required
            type="password"
            id = "passord"
            name="password"
            value={password}
            placeholder="password"
            onChange={handleChange} 
          />
        </div>
        <div>
          <input
            className='input-field' 
            required
            type="name"
            id = "name"
            name="name"
            value={name}
            placeholder="name"
            onChange={handleChange} 
          />
        </div>
        <div>
          <input
            className='input-field' 
            required
            type="surname"
            id = "surname"
            name="surname"
            value={surname}
            placeholder="surname"
            onChange={handleChange} 
          />
        </div>
        <button className='submit-btn' type="submit">
          Register
        </button>
      </form>
    </section>
  )
}

export default Register;