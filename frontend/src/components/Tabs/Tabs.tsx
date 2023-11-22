import clsx from "clsx";
import { FC } from "react";
import { Tabs as ReactTabs, TabsProps } from "react-tabs";

import { Tab } from "./Tab";
import { TabList } from "./TabList";
import { TabPanel } from "./TabPanel";
import styles from "./Tabs.module.scss";

type Props = TabsProps;

const Tabs: FC<Props> & {
  Tab: typeof Tab;
  TabList: typeof TabList;
  TabPanel: typeof TabPanel;
} = ({ className, children, ...props }) => {
  className = clsx(styles.tabs, className);

  return (
    <ReactTabs className={className} {...props}>
      {children}
    </ReactTabs>
  );
};

Tabs.Tab = Tab;
Tabs.TabList = TabList;
Tabs.TabPanel = TabPanel;

export { Tabs };
