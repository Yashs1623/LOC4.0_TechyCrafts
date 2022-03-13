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
import Footer from './components/Footer';
import User from "./components/User";
import Volunteer from './components/Volunteer';
import Donate from './components/Donate';
import Landing from './components/Landing';
import Signup2 from './components/Signup2';
import Colab from './components/Colab';
import Portal from './components/Portal';

function App() {
  return (
   
    <>
      <AuthState>
        <Router>
        <NavBar navType='dark' bgColor="#0950D5"  textColor="white" />
        <div className="container my-3">
            <Routes>
                <Route exact path='/' element={<Landing/>}></Route> 
                <Route exact path='/login' element={< Login />}></Route> 
                <Route exact path='/signup_user' element={< Signup2 />}></Route> 
                <Route exact path='/signup' element={< Signup />}></Route> 
                <Route exact path='/ngo' element={<NGO/>}></Route> 
                <Route exact path='/user' element={<User/>}></Route>
                <Route exact path='/fundraiser' element={<Fund/>}></Route> 
                <Route exact path='/event' element={<Event/>}></Route> 
                <Route exact path='/volunteer' element={<Volunteer/>}></Route>
                <Route exact path='/donate' element={<Donate/>}></Route>  
                <Route exact path='/colab' element={<Colab/>}></Route>
                <Route exact path='/payment' element={<Portal/>}></Route>

            </Routes>
        </div>
        <Footer/>
        </Router>
      </AuthState> 
    </>
  );
}

export default App;
