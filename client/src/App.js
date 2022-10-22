import './App.css';
import axios from "axios";
import Shop from './components/Shop';
import {useEffect, useState} from "react";
import { getAllProducts } from './services/api-helper';


// const API_URL = "";
// function getAPIData(){
//   return axios.get(API_URL).then((response) => response.data)
// }


function App() {
  const [products, setProducts] = useState([]);
  useEffect(() => {
    let mounted = true;
    getAllProducts().then((items) => {
if(mounted) {
  setProducts(items);
}
    });
    return () => (mounted = false);
  }, []);

  return (
    <div className="App">
      {/* <Title /> */}
      <Shop products = {products}/>
    </div>
  );
}

export default App;
