import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";
import { BeatLoader } from "react-spinners";

import styles from "./Button.module.scss";

interface Props extends ComponentPropsWithoutRef<"button"> {
  variant?: "primary" | "secondary" | "link";
  loading?: boolean;
}

const Button: FC<Props> = ({
  variant = "primary",
  className,
  loading,
  children,
  disabled,
  ...props
}) => {
  className = clsx(
    styles.button,
    styles[variant],
    loading && styles.loading,
    className
  );

  return (
    <button className={className} disabled={disabled || loading} {...props}>
      <BeatLoader size={10} margin={0} className={styles.loader} />
      <span className={styles.content}>{children}</span>
    </button>
  );
};

export { Button };
