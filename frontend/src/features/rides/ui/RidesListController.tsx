import { useRides } from "../hooks/useRides";
import { RidesListView } from "./RidesListView";

const RidesListController = () => {
  const { data: rides = [] } = useRides(
    {},
    {
      refetchInterval: (query) =>
        query.state?.data?.length ? 30 * 1000 : undefined,
    },
  );

  if (!rides.length) {
    return null;
  }

  return <RidesListView rides={rides} />;
};

export { RidesListController };
