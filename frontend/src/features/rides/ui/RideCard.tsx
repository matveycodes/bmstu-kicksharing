import clsx from "clsx";
import dayjs from "dayjs";
import plural from "plural-ru";
import { ComponentPropsWithoutRef, FC } from "react";

import { Typography } from "../../../components";
import { Ride } from "../types/ride";
import styles from "./RideCard.module.scss";

interface Props extends ComponentPropsWithoutRef<"div"> {
  ride: Ride;
}

const RideCard: FC<Props> = ({ ride, className, ...props }) => {
  className = clsx(styles.card, className);

  return (
    <div className={className} {...props}>
      <div className={styles.info}>
        <Typography.Text bold>
          {dayjs(ride.dateFinished).format("DD.MM.YYYY HH:mm")}
        </Typography.Text>
        <div className={styles.description}>
          <Typography.Text>{ride.scooter.number}</Typography.Text>
          <Typography.Text>
            {ride.duration < 60
              ? "меньше минуты"
              : plural(
                  Math.round(ride.duration / 60),
                  "%d минута",
                  "%d минуты",
                  "%d минут"
                )}
          </Typography.Text>
        </div>
      </div>
      <Typography.Text bold>{ride.totalPrice / 100} ₽</Typography.Text>
    </div>
  );
};

export { RideCard };
