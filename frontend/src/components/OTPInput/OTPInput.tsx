import clsx from "clsx";
import { forwardRef } from "react";
import ReactInput, { OTPInputProps } from "react-otp-input";

import { Input } from "../Input";
import styles from "./OTPInput.module.scss";

interface Props
  extends Omit<OTPInputProps, "renderInput" | "value" | "onChange"> {
  value: number;
  onChange: (otp: number) => void;
}

const OTPInput = forwardRef<never, Props>(({ value, onChange, ...props }) => {
  return (
    <ReactInput
      value={value?.toString()}
      onChange={(otp) => onChange(Number.parseInt(otp))}
      containerStyle={{ gap: 12.5, margin: "auto" }}
      {...props}
      renderInput={({ className, ...props }) => (
        <Input className={clsx(styles.input, className)} {...props} />
      )}
    />
  );
});

export { OTPInput };
