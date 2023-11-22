import clsx from "clsx";
import { ComponentPropsWithoutRef, forwardRef } from "react";

import styles from "./Input.module.scss";

type Props = ComponentPropsWithoutRef<"input">;

const Input = forwardRef<HTMLInputElement, Props>(
  ({ className, ...props }, ref) => {
    className = clsx(styles.input, className);

    return <input type="text" className={className} {...props} ref={ref} />;
  },
);

export { Input };
