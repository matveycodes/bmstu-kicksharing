import { ScooterBuilder } from "../builders/scooter";

class ScooterMother {
  public static anEnabledScooter() {
    return new ScooterBuilder().withStatus("enabled");
  }

  public static aDisabledScooter() {
    return new ScooterBuilder().withStatus("disabled");
  }
}

export { ScooterMother };
