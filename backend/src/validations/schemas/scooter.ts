import { z } from "zod";

const UPDATE_SCOOTER_BODY_SCHEMA = z.strictObject({
  status: z.enum(["enabled", "disabled"]).optional(),
  number: z.string().min(1).optional(),
});

export { UPDATE_SCOOTER_BODY_SCHEMA };
