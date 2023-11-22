import toast from "react-hot-toast";

import { isClientError } from "../features/api";

const handleError = (error: unknown) => {
  if (!isClientError(error)) {
    return toast.error("Произошла неизвестная ошибка");
  }

  const { errors } = error.response.data;

  for (const error of errors) {
    toast.error(error.message);
  }
};

export { handleError };
