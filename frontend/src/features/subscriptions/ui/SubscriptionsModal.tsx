import NiceModal, { useModal } from "@ebay/nice-modal-react";

import { Modal } from "../../../components";
import { Subscriptions } from "./Subscriptions";
import styles from "./SubscriptionsModal.module.scss";

const SubscriptionsModal = NiceModal.create(() => {
  const modal = useModal();

  return (
    <Modal
      title="Подписки"
      visible={modal.visible}
      onClose={modal.hide}
      className={styles.modal}
    >
      <Subscriptions />
    </Modal>
  );
});

export { SubscriptionsModal };
