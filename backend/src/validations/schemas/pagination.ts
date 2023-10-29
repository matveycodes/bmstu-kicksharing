import { z } from "zod";

const PAGINATION_QUERY_SCHEMA = z.object({
  pageSize: z.coerce
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

export { PAGINATION_QUERY_SCHEMA };
