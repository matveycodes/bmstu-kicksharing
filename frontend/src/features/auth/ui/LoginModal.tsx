import NiceModal, { useModal } from "@ebay/nice-modal-react";
import { useRef, useState } from "react";

import { Button, Modal } from "../../../components";
import { handleError } from "../../../utils/errors";
import {
  LoginFormController,
  LoginFormControllerRef,
} from "./LoginFormController";
import styles from "./LoginModal.module.scss";
import { OTPModal } from "./OTPModal";

const LoginModal = NiceModal.create(() => {
  const [isLoading, setIsLoading] = useState(false);
  const modal = useModal();

  const formRef = useRef<LoginFormControllerRef>(null);

  const onNext = async () => {
    if (!formRef.current) return;

    setIsLoading(true);

    try {
      const { signature } = await formRef.current.submit();
      void NiceModal.show(OTPModal, { signature });
      void modal.hide();
    } catch (error) {
      handleError(error);
    }

    setIsLoading(false);
  };

  return (
    <Modal
      visible={modal.visible}
      onClose={modal.hide}
      title="Авторизация"
      buttons={[
        <Button onClick={onNext} key="next" loading={isLoading}>
          Далее
        </Button>,
      ]}
      className={styles.modal}
    >
      <LoginFormController ref={formRef} />
    </Modal>
  );
});

export { LoginModal };
