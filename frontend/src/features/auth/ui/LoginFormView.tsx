import { ComponentProps, FC } from "react";
import { UseFormReturn } from "react-hook-form";

import { Form, PhoneInput, Typography } from "../../../components";
import { LoginFormData } from "../types/login-form";

interface Props extends ComponentProps<typeof Form> {
  form: UseFormReturn<LoginFormData>;
}

const LoginFormView: FC<Props> = ({ form, ...props }) => {
  return (
    <Form {...props}>
      <Typography.Text>
        Введите ваш номер телефона — на&nbsp;него будет отправлен короткий код
        для&nbsp;авторизации
      </Typography.Text>
      <PhoneInput {...form.register("phone")} />
    </Form>
  );
};

export { LoginFormView };
