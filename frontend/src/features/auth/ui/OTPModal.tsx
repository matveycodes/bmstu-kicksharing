import NiceModal, { useModal } from "@ebay/nice-modal-react";
import { useQueryClient } from "@tanstack/react-query";
import { useRef, useState } from "react";

import { Button, Modal } from "../../../components";
import { handleError } from "../../../utils/errors";
import { saveToken } from "../utils/token";
import { OTPFormController, OTPFormControllerRef } from "./OTPFormController";
import styles from "./OTPModal.module.scss";

interface Props {
  signature: string;
}

const OTPModal = NiceModal.create<Props>(({ signature }) => {
  const modal = useModal();
  const queryClient = useQueryClient();
  const formRef = useRef<OTPFormControllerRef>(null);

  const [isLoading, setIsLoading] = useState(false);

  const onLogin = async () => {
    if (!formRef.current) return;

    setIsLoading(true);

    try {
      const { token } = await formRef.current.submit();
      saveToken(token);
      void queryClient.resetQueries();
      void modal.hide();
    } catch (error) {
      handleError(error);
    }

    setIsLoading(false);
  };

  return (
    <Modal
      title="Авторизация"
      className={styles.modal}
      visible={modal.visible}
      onClose={modal.hide}
      buttons={[
        <Button onClick={onLogin} loading={isLoading} key="login">
          Войти
        </Button>,
      ]}
    >
      <OTPFormController signature={signature} ref={formRef} />
    </Modal>
  );
});

export { OTPModal };
