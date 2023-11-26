import { UserBuilder } from "../builders/user";

class UserMother {
  public static aBlockedCustomer() {
    return new UserBuilder().withRole("customer").withStatus("blocked");
  }

  public static anActiveCustomer() {
    return new UserBuilder().withRole("customer").withStatus("active");
  }

  public static aPendingCustomer() {
    return new UserBuilder().withRole("customer").withStatus("pending");
  }
}

export { UserMother };
