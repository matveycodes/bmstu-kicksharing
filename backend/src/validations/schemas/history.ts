import { z } from "zod";

const CREATE_HISTORY_ENTRY_BODY_SCHEMA = z.strictObject({
  rideId: z.string().uuid(),
});

export { CREATE_HISTORY_ENTRY_BODY_SCHEMA };
