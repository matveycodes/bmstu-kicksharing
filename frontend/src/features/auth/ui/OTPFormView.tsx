import { ComponentProps, FC } from "react";
import { Controller, UseFormReturn } from "react-hook-form";

import { Form, OTPInput, Typography } from "../../../components";
import { OTPFormData } from "../types/otp-form";

interface Props extends ComponentProps<typeof Form> {
  form: UseFormReturn<OTPFormData>;
}

const OTPFormView: FC<Props> = ({ form, ...props }) => {
  return (
    <Form {...props}>
      <Typography.Text>
        Введите короткий код из&nbsp;СМС-сообщения, отправленного на&nbsp;ваш
        номер телефона
      </Typography.Text>
      <Controller
        render={({ field }) => <OTPInput {...field} />}
        name="code"
        control={form.control}
      />
    </Form>
  );
};

export { OTPFormView };
