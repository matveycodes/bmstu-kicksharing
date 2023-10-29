import { z } from "zod";

const USER_INFO_FORM_SCHEMA = z.object({
  firstName: z.string(),
  lastName: z.string(),
  middleName: z.string(),
  birthdate: z
    .string()
    .regex(/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/)
    .or(z.literal("")),
  email: z.string().email().or(z.literal("")),
});

export { USER_INFO_FORM_SCHEMA };
