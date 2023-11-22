import { ComponentProps, forwardRef, useImperativeHandle } from "react";
import { useForm } from "react-hook-form";

import { parsePhone } from "../../../utils/phone";
import { login } from "../api/auth";
import { LoginResponse } from "../types/api";
import { LoginFormData } from "../types/login-form";
import { LoginFormView } from "./LoginFormView";

interface LoginFormControllerRef {
  submit: () => Promise<LoginResponse>;
}

type Props = Omit<ComponentProps<typeof LoginFormView>, "form">;

const LoginFormController = forwardRef<LoginFormControllerRef, Props>(
  (props, ref) => {
    const form = useForm<LoginFormData>();

    useImperativeHandle(ref, () => ({
      submit: async () => {
        const data = form.getValues();
        data.phone = parsePhone(data.phone);
        return login(data);
      },
    }));

    return <LoginFormView {...props} form={form} />;
  }
);

export { LoginFormController };
export type { LoginFormControllerRef };
