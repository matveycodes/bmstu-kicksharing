import { useBookingsCount } from "../hooks/useBookingsCount";
import { BookingsCountBannerView } from "./BookingsCountBannerView";

const BookingsCountBannerController = () => {
  const { data: count } = useBookingsCount();

  if (!Number.isFinite(count)) {
    return null;
  }

  return <BookingsCountBannerView count={count!} />;
};

export { BookingsCountBannerController };
