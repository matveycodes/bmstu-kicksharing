import "reset-css";
import "../../styles/fonts.scss";
import "../../styles/global.scss";

import { ControlPanel } from "../../features/control-panel";
import { Map } from "../../features/map";
import styles from "./Layout.module.scss";

const Layout = () => {
  return (
    <>
      <ControlPanel
        className={styles.controlPanel}
        bannersClassName={styles.banners}
      />
      <div className={styles.mapWrapper}>
        <Map className={styles.map} />
      </div>
    </>
  );
};

export { Layout };
