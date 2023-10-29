import { z } from "zod";

import { StringBoolean } from "../types/string-boolean";

const CREATE_RIDE_BODY_SCHEMA = z.strictObject({
  scooterId: z.string().uuid(),
});

const GET_RIDES_QUERY_SCHEMA = z.object({
  isActive: StringBoolean.optional(),
});

export { CREATE_RIDE_BODY_SCHEMA, GET_RIDES_QUERY_SCHEMA };
