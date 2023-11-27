import flatten from "lodash/flatten";
import { useMemo } from "react";

import { Typography } from "../../../components";
import { usePastRidesPaginated } from "../hooks/usePastRidesPaginated";
import { Ride } from "../types/ride";
import { PastRidesListView } from "./PastRidesListView";

const PastRidesListController = () => {
  const { data, hasNextPage, fetchNextPage } = usePastRidesPaginated({
    pageSize: 5,
  });

  const rides = useMemo(() => {
    return flatten<Ride>(data?.pages.map((p) => p.results));
  }, [data?.pages]);

  if (!rides.length) {
    return <Typography.Text>Нет данных</Typography.Text>;
  }

  return (
    <PastRidesListView
      rides={rides}
      loadMore={hasNextPage ? fetchNextPage : undefined}
    />
  );
};

export { PastRidesListController };
