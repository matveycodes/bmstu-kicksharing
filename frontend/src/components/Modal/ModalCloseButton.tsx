import { ComponentProps, FC } from "react";

import CloseIcon from "../../assets/icons/cross.svg?react";
import { IconButton } from "../IconButton";

type Props = Omit<ComponentProps<typeof IconButton>, "icon">;

const ModalCloseButton: FC<Props> = (props) => {
  return <IconButton icon={CloseIcon} {...props} />;
};

export { ModalCloseButton };
