import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import styles from "./TypographyText.module.scss";

interface Props extends ComponentPropsWithoutRef<"span"> {
  bold?: boolean;
}

const TypographyText: FC<Props> = ({ bold, className, children, ...props }) => {
  className = clsx(styles.text, bold && styles.bold, className);

  return (
    <span className={className} {...props}>
      {children}
    </span>
  );
};

export { TypographyText };
