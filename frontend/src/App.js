import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Login from './pages/Login';
import Overview from './pages/Overview';
import Register from "./pages/Register";

function App() {
  return (
    <Router>
      <Routes>
        <Route path='/register' element={<Register/>}></Route>
        <Route path='/login' element={<Login/>}></Route>
        <Route path='/*' element={<Overview/>}></Route>
      </Routes>
    </Router>

  );
}

export default App;
