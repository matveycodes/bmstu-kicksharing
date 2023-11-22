import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import { Booking } from "../types/booking";
import { BookingActivity } from "./BookingActivity";
import styles from "./BookingsListView.module.scss";

interface Props extends ComponentPropsWithoutRef<"ol"> {
  bookings: Booking[];
  onComplete?: () => unknown;
}

const BookingsListView: FC<Props> = ({
  bookings,
  onComplete,
  className,
  ...props
}) => {
  className = clsx(styles.list, className);

  return (
    <ol className={className} {...props}>
      {bookings.map((booking) => (
        <li key={booking.id}>
          <BookingActivity booking={booking} onComplete={onComplete} />
        </li>
      ))}
    </ol>
  );
};

export { BookingsListView };
