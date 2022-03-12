import React , { useState} from 'react';
import AuthContext from './AuthContext';

function AuthState(props) {
    const [auth, setAuth] = useState(null);
  return (

    <AuthContext.Provider value={ {auth ,setAuth} } >
        {props.children}
    </AuthContext.Provider>
      
    
  )
}

export default AuthState
