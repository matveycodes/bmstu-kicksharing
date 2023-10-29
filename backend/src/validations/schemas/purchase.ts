import { z } from "zod";

const CREATE_PURCHASE_BODY_SCHEMA = z.strictObject({
  subscriptionId: z.string().uuid(),
});

export { CREATE_PURCHASE_BODY_SCHEMA };
