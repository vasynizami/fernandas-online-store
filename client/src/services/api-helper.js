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

export const getAllOrders = async (userId) => {
  const resp = await api.get(`/users/${user_id}/orders`);
  return resp.data;
}

export const getOneReview = async (anything, id) => {
  const resp = await api.get(`/movies/${anything}/reviews/${id}`);
  return resp.data;
}

export const postReview = async (movie_id, reviewData) => {
  const resp = await api.post(`/movies/${movie_id}/reviews`, reviewData);
  return resp.data;
}

export const editReview = async (anything, id, reviewData) => {
  const resp = await api.put(`/movies/${anything}/reviews/${id}`, reviewData);
  return resp.data;
}

export const destroyReview = async (anything, id) => {
  const resp = await api.delete(`/movies/${anything}/reviews/${id}`);
  return resp;
}