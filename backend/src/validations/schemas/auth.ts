import { z } from "zod";

const AUTH_REQUEST_BODY_SCHEMA = z.strictObject({
  phone: z
    .string({ required_error: "Укажите номер телефона" })
    .regex(/^7[0-9]{10}$/, {
      message: "Номер телефона имеет неверный формат",
    }),
});

const AUTH_PROCEED_BODY_SCHEMA = z.strictObject({
  signature: z
    .string({ required_error: "Укажите подпись" })
    .min(1, "Укажите подпись"),
  code: z
    .number({ required_error: "Укажите код" })
    .int({ message: "Код имеет неверный формат" }),
});

export { AUTH_PROCEED_BODY_SCHEMA, AUTH_REQUEST_BODY_SCHEMA };
