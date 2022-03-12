import './App.css';
import {
  BrowserRouter as Router,
  Routes,
  Route
} from "react-router-dom";

import Login from './components/Login';
import Signup from './components/Signup';
import NavBar from './components/NavBar';
import AuthState from './context/AuthCheck/AuthState';
import NGO from './components/NGO';

function App() {
  return (
    <>
      <AuthState>
        <Router>
        <NavBar navType='dark' bgColor="#0950D5"  textColor="white" />
        <div className="container my-3">
            <Routes>
                <Route exact path='/' element={< Login />}></Route> 
                <Route exact path='/login' element={< Login />}></Route> 
                <Route exact path='/signup' element={< Signup />}></Route> 
                <Route exact path='/ngo' element={<NGO/> }></Route> 
                <Route exact path='/fundraiser' element={<Login/> }></Route> 
                <Route exact path='/event' element={<Signup/> }></Route> 
            </Routes>
        </div>
        </Router>
      </AuthState> 
    </>
  );
}

export default App;
