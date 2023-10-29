import {
  FormControl,
  FormErrorMessage,
  FormLabel,
  Input,
  SimpleGrid,
} from "@chakra-ui/react";
import { FC } from "react";
import { UseFormReturn } from "react-hook-form";

import { UserInfoFormData } from "../types/user-info-form";

interface Props {
  form: UseFormReturn<UserInfoFormData>;
  isEditing?: boolean;
}

const UserInfoFormPersonal: FC<Props> = ({ form, isEditing }) => {
  return (
    <SimpleGrid columns={2} spacing={3}>
      <FormControl isInvalid={!!form.formState.errors.firstName}>
        <FormLabel>Имя</FormLabel>
        <Input readOnly={!isEditing} {...form.register("firstName")} />
        {form.formState.errors.firstName && (
          <FormErrorMessage>
            {form.formState.errors.firstName.message}
          </FormErrorMessage>
        )}
      </FormControl>

      <FormControl isInvalid={!!form.formState.errors.lastName}>
        <FormLabel>Фамилия</FormLabel>
        <Input readOnly={!isEditing} {...form.register("lastName")} />
        {form.formState.errors.lastName && (
          <FormErrorMessage>
            {form.formState.errors.lastName.message}
          </FormErrorMessage>
        )}
      </FormControl>

      <FormControl isInvalid={!!form.formState.errors.middleName}>
        <FormLabel>Отчество</FormLabel>
        <Input readOnly={!isEditing} {...form.register("middleName")} />
        {form.formState.errors.middleName && (
          <FormErrorMessage>
            {form.formState.errors.middleName.message}
          </FormErrorMessage>
        )}
      </FormControl>

      <FormControl isInvalid={!!form.formState.errors.birthdate}>
        <FormLabel>Дата рождения</FormLabel>
        <Input
          type="date"
          readOnly={!isEditing}
          {...form.register("birthdate")}
        />
        {form.formState.errors.birthdate && (
          <FormErrorMessage>
            {form.formState.errors.birthdate.message}
          </FormErrorMessage>
        )}
      </FormControl>

      <FormControl isInvalid={!!form.formState.errors.email}>
        <FormLabel>Электронная почта</FormLabel>
        <Input type="email" readOnly={!isEditing} {...form.register("email")} />
        {form.formState.errors.email && (
          <FormErrorMessage>
            {form.formState.errors.email.message}
          </FormErrorMessage>
        )}
      </FormControl>
    </SimpleGrid>
  );
};

export { UserInfoFormPersonal };
