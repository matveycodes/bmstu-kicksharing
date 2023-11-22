import { ComponentProps, FC } from "react";
import { UseFormReturn } from "react-hook-form";

import { Form, Input, Label } from "../../../components";
import { UserFormData } from "../types/user-form";

interface Props extends ComponentProps<typeof Form> {
  form: UseFormReturn<UserFormData>;
}

const UserFormView: FC<Props> = ({ form, ...props }) => {
  return (
    <Form {...props}>
      <Form.Row columns={3}>
        <Label title="Имя">
          <Input placeholder="Константин" {...form.register("firstName")} />
        </Label>
        <Label title="Фамилия">
          <Input
            placeholder="Константинопольский"
            {...form.register("lastName")}
          />
        </Label>
        <Label title="Отчество">
          <Input placeholder="Константинов" {...form.register("middleName")} />
        </Label>
      </Form.Row>
      <Form.Row columns={2}>
        <Label title="E-mail">
          <Input
            placeholder="name@yourdomain.tld"
            {...form.register("email")}
          />
        </Label>
        <Label title="Дата рождения">
          <Input placeholder="01.01.2001" {...form.register("birthdate")} />
        </Label>
      </Form.Row>
    </Form>
  );
};

export { UserFormView };
