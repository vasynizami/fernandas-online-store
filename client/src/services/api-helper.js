import axios from 'axios';

const baseUrl =  'http://localhost:3000';

const api = axios.create({
  baseURL: baseUrl
})

//=============================================
//================= AUTH =====================
//============================================
//look up how to setup when using devise on backend - rails 

export const loginUser = async (loginData) => {
  const resp = await api.post('/auth/login', { auth: loginData });
  localStorage.setItem('authToken', resp.data.token);
  api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`;
  return resp.data.user;
}

export const registerUser = async (registerData) => {
  const resp = await api.post('/users', { user: registerData })
  localStorage.setItem('authToken', resp.data.token);
  api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`
  return resp.data.user
}

export const verifyUser = async () => {
  const token = localStorage.getItem('authToken');
  if (token) {
    api.defaults.headers.common.authorization = `Bearer ${token}`
    const resp = await api.get('/auth/verify');
    return resp.data
  }
  return false
}

//this will reset our header back to nothing (log out)
export const removeToken = () => {
  api.defaults.headers.common.authorization = null;
}


//=============================================
//================= products ==================
//============================================

export const getAllProducts = async () => {
  const resp = await api.get('/shop');
  return resp.data;
}

export const getOneProduct = async (id) => {
  const resp = await api.get(`/shop/${id}`);
  return resp.data;
}

//=============================================
//================= orders ==================== 
//============================================

export const getAllOrders = async (userID) => {
  const resp = await api.get(`/users/${userID}/orders`);
  return resp.data;
}

export const getOneOrder = async (userID, orderID) => {
  const resp = await api.get(`/users/${userID}/orders/${orderID}`);
  return resp.data;
}

export const createOrder = async (orderID, orderData) => {
  const resp = await api.post(`/users/${orderID}/orders`, orderData);
  return resp.data;
}
