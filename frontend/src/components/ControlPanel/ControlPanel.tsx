import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import styles from "./ControlPanel.module.scss";

type Props = ComponentPropsWithoutRef<"div">;

const ControlPanel: FC<Props> = ({ className, children, ...props }) => {
  className = clsx(styles.panel, className);

  return (
    <div className={className} {...props}>
      {children}
    </div>
  );
};

export { ControlPanel };
