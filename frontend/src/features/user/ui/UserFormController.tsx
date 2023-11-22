import { forwardRef, useImperativeHandle } from "react";
import { useForm } from "react-hook-form";
import toast from "react-hot-toast";
import useFormPersist from "react-hook-form-persist";

import { updateCurrentUser } from "../api/user";
import { useInvalidateCurrentUser } from "../hooks/useInvalidateCurrentUser";
import { User } from "../types/user";
import { UserFormData } from "../types/user-form";
import { form2user, user2form } from "../utils/user-form";
import { UserFormView } from "./UserFormView";

interface UserFormControllerRef {
  submit: () => Promise<void>;
}

interface Props {
  user?: User;
}

const UserFormController = forwardRef<UserFormControllerRef, Props>(
  ({ user }, ref) => {
    const { invalidateCurrentUser } = useInvalidateCurrentUser();

    const form = useForm<UserFormData>({
      defaultValues: user ? user2form(user) : undefined,
    });

    useFormPersist("user-form", {
      watch: form.watch,
      setValue: form.setValue,
      storage: window.localStorage,
    });

    useImperativeHandle(ref, () => ({
      submit: async () => {
        const data = form2user(form.getValues());
        await updateCurrentUser(data);
        toast.success("Информация успешно сохранена");
        await invalidateCurrentUser();
      },
    }));

    return <UserFormView form={form} />;
  }
);

export { UserFormController };
export type { UserFormControllerRef };
