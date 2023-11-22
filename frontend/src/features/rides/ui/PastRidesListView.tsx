import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import { Button } from "../../../components";
import { Ride } from "../types/ride";
import styles from "./PastRidesListView.module.scss";
import { RideCard } from "./RideCard";

interface Props extends ComponentPropsWithoutRef<"ol"> {
  rides: Ride[];
  loadMore?: () => Promise<unknown>;
}

const PastRidesListView: FC<Props> = ({
  rides,
  loadMore,
  className,
  ...props
}) => {
  className = clsx(styles.list, className);

  return (
    <ol className={className} {...props}>
      {rides.map((ride) => (
        <li key={ride.id}>
          <RideCard ride={ride} />
        </li>
      ))}

      {loadMore && (
        <li>
          <Button className={styles.more} onClick={loadMore}>
            Загрузить еще
          </Button>
        </li>
      )}
    </ol>
  );
};

export { PastRidesListView };
