import clsx from "clsx";
import { FC } from "react";
import { Tab as ReactTab, TabProps } from "react-tabs";

import styles from "./Tab.module.scss";

type Props = TabProps;

const Tab: FC<Props> & {
  tabsRole: "Tab";
} = ({ className, children, ...props }) => {
  className = clsx(styles.tab, className);

  return (
    <ReactTab
      className={className}
      selectedClassName={styles.selected}
      {...props}
    >
      {children}
    </ReactTab>
  );
};

Tab.tabsRole = "Tab";

export { Tab };
