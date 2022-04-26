import axios from "axios";

let ultimateToken = {};

const baseURL = 'http://localhost:3003'

// login the user
let userLogin = async (loginDetails) => {
  let response = await axios({
    method: "POST",
    url: `${baseURL}/admin/login`,
    data: loginDetails,
  });
  ultimateToken["token"] = response.data.token;
  console.log(ultimateToken.token);
  console.log(response);
  return response;
};

// let api = axios.create({
//   baseURL: "http://localhost:3003/",
//   headers: {
//     authorization: `Bearer `,
//   },
// });

// let showAuthorPost = async () => {
//   let response = await api.get(`/posts`);
//   console.log(response);
//   return response;
// };

export default baseURL;
export { userLogin };
