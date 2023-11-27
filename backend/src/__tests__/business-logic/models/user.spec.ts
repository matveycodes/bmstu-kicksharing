import { UserBuilder } from "../../builders/user";

describe("User", () => {
  describe("Возраст пользователя (age)", () => {
    it("Корректно определяется возраст пользователя", () => {
      const user = new UserBuilder()
        .withBirthdate(new Date("2001-01-01"))
        .build();
      jest.useFakeTimers({ now: new Date("2022-01-01") });

      const age = user.age;

      expect(age).toBe(21);
    });
  });
});
