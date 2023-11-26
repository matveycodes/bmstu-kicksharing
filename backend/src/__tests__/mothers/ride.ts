import { RideBuilder } from "../builders/ride";

class RideMother {
  public static anActiveRide() {
    const dateStarted = new Date();

    return new RideBuilder()
      .withDateStarted(dateStarted)
      .withDateFinished(undefined);
  }

  public static aFinishedRide() {
    const dateStarted = new Date(new Date().getTime() - 15 * 60 * 1000);
    const dateFinished = new Date(dateStarted.getTime() + 10 * 60 * 1000);

    return new RideBuilder()
      .withDateStarted(dateStarted)
      .withDateFinished(dateFinished);
  }
}

export { RideMother };
