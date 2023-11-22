import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import { Ride } from "../types/ride";
import { RideActivity } from "./RideActivity";
import styles from "./RidesListView.module.scss";

interface Props extends ComponentPropsWithoutRef<"ol"> {
  rides: Ride[];
}

const RidesListView: FC<Props> = ({ rides, className, ...props }) => {
  className = clsx(styles.list, className);

  return (
    <ol className={className} {...props}>
      {rides.map((ride) => (
        <li key={ride.id}>
          <RideActivity ride={ride} />
        </li>
      ))}
    </ol>
  );
};

export { RidesListView };
