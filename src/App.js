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
import Event from './components/Event';
import Fund from './components/fundraiser';

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
                <Route exact path='/fundraiser' element={<Fund/> }></Route> 
                <Route exact path='/event' element={<Event/> }></Route> 
            </Routes>
        </div>
        </Router>
      </AuthState> 
    </>
  );
}

export default App;
