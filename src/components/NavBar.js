import React, { useContext } from "react";
import { Link, useLocation } from "react-router-dom";
import logo from "../images/login2.PNG"
import AuthContext from "../context/AuthCheck/AuthContext";


function NavBar(props) {
  const context2 = useContext(AuthContext);
  const { auth, setAuth } = context2;
  setAuth(false);
  let location = useLocation();

  const handleLogout = () => {
    localStorage.removeItem("token");


    setAuth(false);
  };
  return (
    <>

    <nav
      className={`navbar fixed-top navbar-expand-lg navbar-${props.navType} `}
      style={{
        backgroundColor: `${props.bgColor}`,
        color: `${props.textColor}`,
      }}
    >
      <div className="container-fluid">
        <img
          src={logo}
          alt=""
          width="41"
          height="45"
          className="d-inline-block align-text-top mx-4"
        />
        <Link className="navbar-brand" to="/">
          Little Hopes
        </Link>
        <button
          className="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse " id="navbarSupportedContent">
          <ul className="navbar-nav me-auto mb-2 mb-lg-0">
            <li className="nav-item">
              <Link
                className={`nav-link ${
                  location.pathname === "/" ? "active" : ""
                }`}
                aria-current="page"
                to="/"
              >
                Home
              </Link>
            </li>
            <li className="nav-item">
              <Link
                className={`nav-link ${
                  location.pathname === "/about" ? "active" : ""
                }`}
                to="/about"
              >
                About
              </Link>
            </li>
          </ul>
          {/* <form className="d-flex">
        <input className="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
        <button className="btn btn-outline-light" type="submit">Search</button>
      </form> */}
          {auth ? (
            <Link
              to="/login"
              className="btn btn-outline-light mx-1"
              type="button"
              onClick={handleLogout}
            >
              Logout
            </Link>
          ) : (
            <>
              <Link
                to="/login"
                className="btn btn-outline-light mx-1 animate__swing"
                type="button"
              >
                User Login
              </Link>
              <Link
                to="/signup_user"
                className="btn btn-outline-light mx-1"
                type="button"
              >
                User Sign-up
              </Link>
              <Link
                to="/signup"
                className="btn btn-outline-light mx-1"
                type="button"
              >
                NGO Sign-up
              </Link>
            </>
          )}
        </div>
      </div>
    </nav>

    <div style={{marginBottom:"100px"}} ></div>
    </>
  );
}
NavBar.defaultProps = {
  navType: " light ",
  bgColor: "white",
  textColor: "white",
};

export default NavBar;
