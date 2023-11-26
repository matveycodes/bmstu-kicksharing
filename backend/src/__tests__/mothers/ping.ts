import { PingBuilder } from "../builders/ping";

class PingMother {
  public static aDischargedPing() {
    return new PingBuilder().withBatteryLevel(0);
  }

  public static aChargedPing() {
    return new PingBuilder().withBatteryLevel(25);
  }
}

export { PingMother };
