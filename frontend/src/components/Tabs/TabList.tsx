import clsx from "clsx";
import { FC } from "react";
import { TabList as ReactTabList, TabListProps } from "react-tabs";

import styles from "./TabList.module.scss";

type Props = TabListProps;

const TabList: FC<Props> & {
  tabsRole: "TabList";
} = ({ className, children, ...props }) => {
  className = clsx(styles.list, className);

  return (
    <ReactTabList className={className} {...props}>
      {children}
    </ReactTabList>
  );
};

TabList.tabsRole = "TabList";

export { TabList };
