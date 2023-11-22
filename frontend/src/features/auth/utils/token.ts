const TOKEN_KEY = "token";

const saveToken = (token: string) => {
  window.localStorage.setItem(TOKEN_KEY, token);
};

const getToken = () => {
  return window.localStorage.getItem(TOKEN_KEY);
};

const removeToken = () => {
  window.localStorage.removeItem(TOKEN_KEY);
};

export { getToken, removeToken, saveToken };
