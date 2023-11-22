import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import { Typography } from "../Typography";
import styles from "./Banner.module.scss";

interface Props extends ComponentPropsWithoutRef<"div"> {
  title: string;
}

const Banner: FC<Props> = ({ title, className, children, ...props }) => {
  className = clsx(styles.banner, className);

  return (
    <div className={className} {...props}>
      <Typography.Heading level={4} className={styles.title}>
        {title}
      </Typography.Heading>

      {children}
    </div>
  );
};

export { Banner };
