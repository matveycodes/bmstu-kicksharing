import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import { Typography } from "../Typography";
import { ModalCloseButton } from "./ModalCloseButton";
import styles from "./ModalHeader.module.scss";

interface Props extends ComponentPropsWithoutRef<"header"> {
  title?: string;
  onClose?: () => unknown;
}

const ModalHeader: FC<Props> = ({ title, onClose, className, ...props }) => {
  className = clsx(styles.header, className);

  return (
    <header className={className} {...props}>
      <Typography.Heading level={3}>{title}</Typography.Heading>
      <ModalCloseButton onClick={onClose} />
    </header>
  );
};

export { ModalHeader };
