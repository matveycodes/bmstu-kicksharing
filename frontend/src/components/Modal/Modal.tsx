import clsx from "clsx";
import { FC, ReactNode } from "react";
import ReactModal from "react-modal";

import styles from "./Modal.module.scss";
import { ModalFooter } from "./ModalFooter";
import { ModalHeader } from "./ModalHeader";

interface Props extends Omit<ReactModal.Props, "isOpen" | "onRequestClose"> {
  visible?: boolean;
  onClose?: () => unknown;
  title?: string;
  buttons?: ReactNode | ReactNode[];
}

ReactModal.setAppElement("#root");

const Modal: FC<Props> = ({
  title,
  children,
  className,
  buttons,
  visible = true,
  onClose,
  ...props
}) => {
  className = clsx(styles.content, className);

  return (
    <ReactModal
      isOpen={visible}
      overlayClassName={styles.overlay}
      className={className}
      onRequestClose={onClose}
      closeTimeoutMS={250}
      {...props}
    >
      <ModalHeader title={title} onClose={onClose} />
      {children}
      {buttons && <ModalFooter>{buttons}</ModalFooter>}
    </ReactModal>
  );
};

export { Modal };
