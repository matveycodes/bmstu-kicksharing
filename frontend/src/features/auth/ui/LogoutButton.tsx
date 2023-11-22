import { useQueryClient } from "@tanstack/react-query";

import { Button } from "../../../components";
import { removeToken } from "../utils/token";

const LogoutButton = () => {
  const queryClient = useQueryClient();

  const onClick = () => {
    removeToken();
    void queryClient.resetQueries();
  };

  return (
    <Button variant="secondary" onClick={onClick}>
      Выйти
    </Button>
  );
};

export { LogoutButton };
