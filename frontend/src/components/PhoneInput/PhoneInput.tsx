import { forwardRef } from "react";
import { PatternFormat, PatternFormatProps } from "react-number-format";
import { SetOptional } from "type-fest";

import { Input } from "../Input";

type Props = SetOptional<PatternFormatProps, "format">;

const PhoneInput = forwardRef<HTMLInputElement, Props>((props, ref) => {
  return (
    <PatternFormat
      allowEmptyFormatting
      mask="_"
      customInput={Input}
      type="tel"
      inputMode="tel"
      {...props}
      format="+7 (###) ###-##-##"
      getInputRef={ref}
    />
  );
});

export { PhoneInput };
