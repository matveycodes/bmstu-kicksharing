import { z } from "zod";

const GET_USERS_QUERY_SCHEMA = z.object({
  search: z.string().min(1).optional(),
});

const UPDATE_CURRENT_USER_BODY_SCHEMA = z.strictObject({
  middleName: z.string().min(1).nullish(),
  lastName: z.string().min(1).nullish(),
  firstName: z.string().min(1).nullish(),
  email: z.string().email().nullish(),
  birthdate: z.coerce.date().nullish(),
});

const UPDATE_USER_BODY_SCHEMA = UPDATE_CURRENT_USER_BODY_SCHEMA.extend({
  status: z.enum(["pending", "active", "blocked"]).optional(),
  role: z.enum(["customer", "technician", "admin"]).optional(),
});

export {
  GET_USERS_QUERY_SCHEMA,
  UPDATE_CURRENT_USER_BODY_SCHEMA,
  UPDATE_USER_BODY_SCHEMA,
};
