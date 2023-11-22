import { useBookings } from "../hooks/useBookings";
import { useInvalidateBookings } from "../hooks/useInvalidateBookings";
import { BookingsListView } from "./BookingsListView";

const BookingsListController = () => {
  const { data: bookings = [] } = useBookings(
    {},
    { refetchInterval: 30 * 1000 },
  );

  const { invalidateBookings } = useInvalidateBookings();

  if (!bookings.length) {
    return null;
  }

  return (
    <BookingsListView bookings={bookings} onComplete={invalidateBookings} />
  );
};

export { BookingsListController };
