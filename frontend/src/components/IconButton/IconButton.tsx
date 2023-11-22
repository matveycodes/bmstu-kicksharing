import clsx from "clsx";
import { ComponentProps, FC, SVGProps } from "react";

import { Button } from "../Button";
import styles from "./IconButton.module.scss";

interface Props extends ComponentProps<typeof Button> {
  icon: FC<SVGProps<SVGSVGElement>>;
}

const IconButton: FC<Props> = ({ icon: Icon, className, ...props }) => {
  className = clsx(styles.button, className);

  return (
    <Button className={className} {...props}>
      <Icon className={styles.icon} />
    </Button>
  );
};

export { IconButton };
