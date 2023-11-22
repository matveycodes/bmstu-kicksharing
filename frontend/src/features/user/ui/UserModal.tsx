import NiceModal, { useModal } from "@ebay/nice-modal-react";
import { useRef, useState } from "react";

import { Button, Modal } from "../../../components";
import { handleError } from "../../../utils/errors";
import { formatPhone } from "../../../utils/phone";
import { User } from "../types/user";
import {
  UserFormController,
  UserFormControllerRef,
} from "./UserFormController";

interface Props {
  user: User;
}

const UserModal = NiceModal.create<Props>(({ user }) => {
  const [isLoading, setIsLoading] = useState(false);
  const formRef = useRef<UserFormControllerRef>(null);

  const onClick = async () => {
    if (!formRef.current) return;

    setIsLoading(true);

    try {
      await formRef.current.submit();
    } catch (error) {
      handleError(error);
    }

    setIsLoading(false);
  };

  const modal = useModal();

  return (
    <Modal
      title={formatPhone(user.phone)}
      visible={modal.visible}
      onClose={modal.hide}
      buttons={[
        <Button onClick={onClick} key="save" loading={isLoading}>
          Сохранить
        </Button>,
      ]}
    >
      <UserFormController user={user} ref={formRef} />
    </Modal>
  );
});

export { UserModal };
