import { z } from "zod";

const CREATE_RIDE_BODY_SCHEMA = z.strictObject({
  scooterId: z.string().uuid(),
});

const GET_RIDES_QUERY_SCHEMA = z.object({
  isActive: z.boolean().optional(),
});

export { CREATE_RIDE_BODY_SCHEMA, GET_RIDES_QUERY_SCHEMA };
