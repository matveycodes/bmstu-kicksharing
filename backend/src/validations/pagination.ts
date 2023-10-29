import { z } from "zod";

const PAGINATION_SCHEMA = z.object({
  page_size: z.coerce
    .number({ invalid_type_error: "Значение должно быть числом" })
    .int({ message: "Значение должно быть целым числом" })
    .min(1, { message: "Значение должно быть положительным числом" })
    .optional(),
  page: z.coerce
    .number({ invalid_type_error: "Значение должно быть числом" })
    .int({ message: "Значение должно быть целым числом" })
    .min(1, { message: "Значение должно быть положительным числом" })
    .optional(),
});

export { PAGINATION_SCHEMA };
