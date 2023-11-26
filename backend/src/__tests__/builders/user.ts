import * as crypto from "crypto";
import sample from "lodash/sample";

import { User, UserId, UserRole, UserStatus } from "../../models/user";
import { Builder } from "../types/builder";

class UserBuilder implements Builder<User> {
  private _id: UserId = crypto.randomUUID() as UserId;
  private _status: UserStatus = sample(["active", "blocked", "pending"]);
  private _role: UserRole = sample(["customer", "admin", "technician"]);
  private _dateJoined: Date = new Date("2022-01-01T15:00:00");
  private _middleName?: string = "Иванович";
  private _firstName?: string = "Иван";
  private _lastName?: string = "Иванов";
  private _email?: string = "hello@example.com";
  private _phone: string = `7${crypto.randomInt(1000000000, 9999999999 + 1)}`;
  private _birthdate?: Date = new Date("2000-01-01");

  public withId(id: UserId) {
    this._id = id;

    return this;
  }

  public withStatus(status: UserStatus) {
    this._status = status;

    return this;
  }

  public withRole(role: UserRole) {
    this._role = role;

    return this;
  }

  public withDateJoined(dateJoined: Date) {
    this._dateJoined = dateJoined;

    return this;
  }

  public withMiddleName(middleName: string) {
    this._middleName = middleName;

    return this;
  }

  public withFirstName(firstName: string) {
    this._firstName = firstName;

    return this;
  }

  public withLastName(lastName: string) {
    this._lastName = lastName;

    return this;
  }

  public withEmail(email: string) {
    this._email = email;

    return this;
  }

  public withPhone(phone: string) {
    this._phone = phone;

    return this;
  }

  public withBirthdate(birthdate: Date) {
    this._birthdate = birthdate;

    return this;
  }

  public build() {
    return new User({
      id: this._id,
      status: this._status,
      role: this._role,
      dateJoined: this._dateJoined,
      middleName: this._middleName,
      firstName: this._firstName,
      lastName: this._lastName,
      email: this._email,
      phone: this._phone,
      birthdate: this._birthdate,
    });
  }
}

export { UserBuilder };
