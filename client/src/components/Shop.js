import React from 'react'


export default function Shop() {
  return (
    <div>
        <Nav />
        <Search />
        {/* Here we will map the products that we get from api call response
        and wrap every product image inside the link. Clicking on product image will open shop item comp. */}
        <div>Products List</div>
    </div>
  )
}
