import { z } from "zod";

const BOUNDS_QUERY_SCHEMA = z
  .object({
    minLatitude: z.string().transform((arg) => Number.parseFloat(arg)),
    maxLatitude: z.string().transform((arg) => Number.parseFloat(arg)),
    minLongitude: z.string().transform((arg) => Number.parseFloat(arg)),
    maxLongitude: z.string().transform((arg) => Number.parseFloat(arg)),
  })
  .or(
    z.object({
      minLatitude: z.undefined(),
      maxLatitude: z.undefined(),
      minLongitude: z.undefined(),
      maxLongitude: z.undefined(),
    })
  );

export { BOUNDS_QUERY_SCHEMA };
