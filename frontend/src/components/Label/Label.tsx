import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import styles from "./Label.module.scss";

interface Props extends ComponentPropsWithoutRef<"label"> {
  title: string;
}

const Label: FC<Props> = ({ title, children, className, ...props }) => {
  className = clsx(styles.label, className);

  return (
    <label className={className} {...props}>
      <span className={styles.title}>{title}</span>
      {children}
    </label>
  );
};

export { Label };
