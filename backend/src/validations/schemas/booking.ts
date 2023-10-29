import { z } from "zod";

import { StringBoolean } from "../types/string-boolean";

const CREATE_BOOKING_BODY_SCHEMA = z.strictObject({
  scooterId: z.string().uuid(),
});

const GET_BOOKINGS_QUERY_SCHEMA = z.object({
  isActive: StringBoolean.optional(),
});

export { CREATE_BOOKING_BODY_SCHEMA, GET_BOOKINGS_QUERY_SCHEMA };
