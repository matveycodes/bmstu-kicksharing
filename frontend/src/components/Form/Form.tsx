import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import styles from "./Form.module.scss";
import { FormRow } from "./FormRow";

type Props = ComponentPropsWithoutRef<"form">;

const Form: FC<Props> & {
  Row: typeof FormRow;
} = ({ className, children, ...props }) => {
  className = clsx(styles.form, className);

  return (
    <form onSubmit={(e) => e.preventDefault()} className={className} {...props}>
      {children}
    </form>
  );
};

Form.Row = FormRow;

export { Form };
