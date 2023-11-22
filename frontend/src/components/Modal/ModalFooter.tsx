import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import styles from "./ModalFooter.module.scss";

type Props = ComponentPropsWithoutRef<"footer">;

const ModalFooter: FC<Props> = ({ className, children, ...props }) => {
  className = clsx(styles.footer, className);

  return (
    <footer className={className} {...props}>
      {children}
    </footer>
  );
};

export { ModalFooter };
