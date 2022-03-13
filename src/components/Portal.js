import React from 'react';


import StripeCheckoutButton from './strip-button/stripe.component';

function Portal() {

  
  const totalPrice = 100;
    
  return (
    <div className="App">
      <header className="App-header">
        <h1>Make Donation for better cause</h1>
        
        <p>
          Pay Total of ₹ {totalPrice}
        </p>
        <p>
          <StripeCheckoutButton price={totalPrice} />
        </p>
      </header>
    </div>
  );
}

export default Portal;