import { ComponentProps, FC } from "react";

import { ControlPanel as ControlPanelComponent } from "../../../components";
import { BookingsCountBanner, BookingsList } from "../../bookings";
import { RidesCountBanner, RidesList } from "../../rides";
import { UserActions } from "../../user";
import clsx from "clsx";

import styles from "./ControlPanel.module.scss";

interface Props extends ComponentProps<typeof ControlPanelComponent> {
  bannersClassName?: string;
}

const ControlPanel: FC<Props> = ({ bannersClassName, ...props }) => {
  bannersClassName = clsx(styles.banners, bannersClassName);

  return (
    <ControlPanelComponent {...props}>
      <UserActions />
      <div className={bannersClassName}>
        <BookingsCountBanner />
        <BookingsList />
        <RidesCountBanner />
        <RidesList />
      </div>
    </ControlPanelComponent>
  );
};

export { ControlPanel };
