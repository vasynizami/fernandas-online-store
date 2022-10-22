import React from 'react';


export default function Shop(props) {
  return (
    <div className="shop-container">
      <h3 className="text-3xl font-bold underline">All products</h3>
      {props.products.map(p => (
        <div key={p.id}>
          <div className="flex">
            <img style={{height:"100px", width:"100px", borderRadius: "50%"}} src={p.img_link} alt={p.name} />
            <h5>{p.name}</h5>
            <p>{p.price_cents/100} USD</p>
          </div>
        </div>
      ))}
    </div>
  );
}
