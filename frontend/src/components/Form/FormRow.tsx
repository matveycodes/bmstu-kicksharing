import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import styles from "./FormRow.module.scss";

interface Props extends ComponentPropsWithoutRef<"div"> {
  columns?: number;
}

const FormRow: FC<Props> = ({
  columns = 2,
  className,
  style,
  children,
  ...props
}) => {
  className = clsx(styles.row, className);

  return (
    <div
      className={className}
      style={{
        ...style,
        gridTemplateColumns: `repeat(${columns}, minmax(0, 1fr))`,
      }}
      {...props}
    >
      {children}
    </div>
  );
};

export { FormRow };
