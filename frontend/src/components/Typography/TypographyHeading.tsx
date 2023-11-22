import clsx from "clsx";
import { ComponentPropsWithoutRef, ReactElement } from "react";

import styles from "./TypographyHeading.module.scss";

type HeadingLevel = 1 | 2 | 3 | 4;

type Props<TLevel extends HeadingLevel = 1> =
  ComponentPropsWithoutRef<`h${TLevel}`> & {
    level?: TLevel;
  };

const TypographyHeading = <TLevel extends HeadingLevel = 1>({
  level,
  className,
  children,
  ...props
}: Props<TLevel>): ReactElement => {
  const Component = level ? `h${level}` : "h1";

  className = clsx(styles[Component], className);

  return (
    <Component className={className} {...props}>
      {children}
    </Component>
  );
};

export { TypographyHeading };
