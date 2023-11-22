import dayjs from "dayjs";
import customParseFormat from "dayjs/plugin/customParseFormat";
import timezone from "dayjs/plugin/timezone";
import utc from "dayjs/plugin/utc";
import { pickBy } from "lodash";

import { User } from "../types/user";
import { UserFormData } from "../types/user-form";

dayjs.extend(utc);
dayjs.extend(timezone);
dayjs.extend(customParseFormat);

const user2form = (user: User) => ({
  firstName: user.firstName ?? undefined,
  lastName: user.lastName ?? undefined,
  middleName: user.middleName ?? undefined,
  birthdate: user.birthdate
    ? dayjs.utc(user.birthdate).format("DD.MM.YYYY")
    : undefined,
  email: user.email ?? undefined,
});

const form2user = (data: UserFormData) => ({
  ...pickBy(data, Boolean),
  birthdate: data.birthdate
    ? dayjs.utc(data.birthdate, "DD.MM.YYYY").format("YYYY-MM-DD")
    : undefined,
});

export { form2user, user2form };
