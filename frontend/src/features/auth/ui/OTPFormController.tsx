import {
  ComponentProps,
  forwardRef,
  useCallback,
  useImperativeHandle,
} from "react";
import { useForm } from "react-hook-form";

import { verifyCode } from "../api/auth";
import { VerifyCodeResponse } from "../types/api";
import { OTPFormData } from "../types/otp-form";
import { OTPFormView } from "./OTPFormView";

interface OTPFormControllerRef {
  submit: () => Promise<VerifyCodeResponse>;
}

interface Props extends Omit<ComponentProps<typeof OTPFormView>, "form"> {
  signature: string;
}

const OTPFormController = forwardRef<OTPFormControllerRef, Props>(
  ({ signature, ...props }, ref) => {
    const form = useForm<OTPFormData>();

    const submit = useCallback(() => {
      const body = { ...form.getValues(), signature };
      return verifyCode(body);
    }, [form, signature]);

    useImperativeHandle(ref, () => ({ submit }), [submit]);

    return <OTPFormView {...props} form={form} />;
  }
);

export { OTPFormController };
export type { OTPFormControllerRef };
