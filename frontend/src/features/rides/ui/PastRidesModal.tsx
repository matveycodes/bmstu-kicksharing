import NiceModal, { useModal } from "@ebay/nice-modal-react";

import { Modal } from "../../../components";
import { PastRidesListController } from "./PastRidesListController";
import styles from "./PastRidesModal.module.scss";

const PastRidesModal = NiceModal.create(() => {
  const modal = useModal();

  return (
    <Modal
      visible={modal.visible}
      onClose={modal.hide}
      title="История поездок"
      className={styles.modal}
    >
      <PastRidesListController />
    </Modal>
  );
});

export { PastRidesModal };
