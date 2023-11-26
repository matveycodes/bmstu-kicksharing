import { BookingBuilder } from "../builders/booking";

class BookingMother {
  public static anActiveBooking() {
    const dateStarted = new Date();
    const dateFinished = new Date(dateStarted.getTime() + 15 * 60 * 1000);

    return new BookingBuilder()
      .withDateStarted(dateStarted)
      .withDateFinished(dateFinished);
  }

  public static aFinishedBooking() {
    const dateStarted = new Date("2022-01-01T00:00:00");
    const dateFinished = new Date("2022-01-01T05:25:25");

    return new BookingBuilder()
      .withDateStarted(dateStarted)
      .withDateFinished(dateFinished);
  }
}

export { BookingMother };
