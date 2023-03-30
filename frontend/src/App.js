import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Login from './pages/Login';
import Overview from './pages/Overview';

function App() {
  return (
    <Router>
      <Routes>
        <Route path='/login' element={<Login/>}></Route>
        <Route path='/' element={<Overview/>}></Route>
      </Routes>
    </Router>

  );
}

export default App;
