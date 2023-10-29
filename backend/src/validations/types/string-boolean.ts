import { z } from "zod";

const StringBoolean = z
  .union([z.boolean(), z.literal("true"), z.literal("false")])
  .transform((value) => value === true || value === "true");

export { StringBoolean };
