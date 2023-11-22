import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { getParkings } from "../api/parkings";
import { GetParkingsParams } from "../types/api";
import { Parking } from "../types/parking";

const useParkings = (
  params?: GetParkingsParams,
  options?: Omit<UseQueryOptions<Parking[]>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["parking", "list", params],
    queryFn: ({ signal }) => getParkings(params, { signal }),
    ...options,
  });
};

export { useParkings };
