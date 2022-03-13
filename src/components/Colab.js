import React, {useState } from "react";
import Card3 from "./Card3";

function Colab() {
    const [arrstate,setArr]=useState(
          [
            {
              address: "Mumbai,Maharastra",
              contact: "9456325871",
              orgName: "Smile Foundation",
              prov: "Volunteers",
              req: "Clothes",
            },
            
          ]

    )
  const [note, setNote] = useState({
    orgName: "",
    address: "",
    req: "",
    prov: "",
    contact: "",
  });
  const onChange = (e) => {
    setNote({ ...note, [e.target.name]: e.target.value });
  };

    const addToArr = () => {
        setArr([...arrstate,note]);
      };
  
  const handleClick = (e) => {
    e.preventDefault();
    addToArr();
    setNote({ orgName: "", address: "", req: "", prov: "", contact: "" });
    console.log(note);
    
  };
  
 
  return (
    <div className="conatiner">
      <h2 className="d-flex justify-content-center">Colaborations Here</h2>
      <div className="conatiner row">
        <div className="col-4">
          <form>
            <div className="mb-3">
              <label htmlFor="orgName" className="form-label">
                Organization Name
              </label>
              <input
                type="text"
                className="form-control"
                id="orgName"
                name="orgName"
                aria-describedby="emailHelp"
                value={note.orgName}
                onChange={onChange}
                minLength={5}
                required
              />
            </div>
            <div className="mb-3">
              <label htmlFor="address" className="form-label">
                Address
              </label>
              <input
                type="text"
                className="form-control"
                id="address"
                name="address"
                value={note.address}
                onChange={onChange}
                minLength={5}
                required
              />
            </div>
            <div className="mb-3">
              <label htmlFor="req" className="form-label">
                Required Things
              </label>
              <input
                type="text"
                className="form-control"
                id="req"
                name="req"
                value={note.req}
                onChange={onChange}
                minLength={2}
                required
              />
            </div>
            <div className="mb-3">
              <label htmlFor="req" className="form-label">
                Things which can be provided by you
              </label>
              <input
                type="text"
                className="form-control"
                id="prov"
                name="prov"
                value={note.prov}
                onChange={onChange}
                minLength={2}
                required
              />
            </div>
            <div className="mb-3">
              <label htmlFor="req" className="form-label">
                Contact Information
              </label>
              <input
                type="text"
                className="form-control"
                id="contact"
                name="contact"
                value={note.contact}
                onChange={onChange}
                minLength={2}
                required
              />
            </div>
            <div className="d-flex justify-content-center">
              <button
                disabled={note.orgName.length < 3 || note.address.length < 5}
                type="submit"
                onClick={handleClick}
                className="btn btn-primary"
              >
                Request Collaboration
              </button>
            </div>
          </form>
        </div>
        <div className="col-2"></div>
        <div className="col-6">
          <h3 className="d-flex justify-content-center">
            OnGoing Colaboration Request
          </h3>
          <div className="container row d-flex justify-content-center">
            {arrstate.map((arrstate) => (
              <Card3
                orgtitle={arrstate.orgName}
                req={arrstate.req}
                prov={arrstate.prov}
                contact={arrstate.contact}
                address={arrstate.address}
              />
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}

export default Colab;
