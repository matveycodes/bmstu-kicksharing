import NiceModal from "@ebay/nice-modal-react";

import { Button } from "../../../components";
import { formatPhone } from "../../../utils/phone";
import { useCurrentUser } from "../hooks/useCurrentUser";
import { UserModal } from "./UserModal";

const UserButton = () => {
  const { data: user, isLoading } = useCurrentUser();

  const onClick = () => {
    if (user) {
      void NiceModal.show(UserModal, { user });
    }
  };

  const phone = user?.phone ? formatPhone(user.phone) : undefined;

  return (
    <Button loading={isLoading} onClick={onClick}>
      {user?.firstName ?? phone ?? "Профиль"}
    </Button>
  );
};

export { UserButton };
