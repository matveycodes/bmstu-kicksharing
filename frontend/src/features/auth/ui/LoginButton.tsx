import NiceModal from "@ebay/nice-modal-react";

import { Button } from "../../../components";
import { LoginModal } from "./LoginModal";

const LoginButton = () => {
  return <Button onClick={showLoginModal}>Войти</Button>;
};

const showLoginModal = () => {
  void NiceModal.show(LoginModal);
};

export { LoginButton };
