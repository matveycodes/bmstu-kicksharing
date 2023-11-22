import clsx from "clsx";
import { FC } from "react";
import { TabPanel as ReactTabPanel, TabPanelProps } from "react-tabs";

import styles from "./TabPanel.module.scss";

type Props = TabPanelProps;

const TabPanel: FC<Props> & {
  tabsRole: "TabPanel";
} = ({ className, children, ...props }) => {
  className = clsx(styles.panel, className);

  return (
    <ReactTabPanel
      className={className}
      selectedClassName={styles.selected}
      {...props}
    >
      {children}
    </ReactTabPanel>
  );
};

TabPanel.tabsRole = "TabPanel";

export { TabPanel };
