import { BookingBuilder } from "../../builders/booking";

describe("Booking", () => {
  describe("Длительность бронирования", () => {
    it("Корректно определяется длительность активного бронирования", () => {
      const booking = new BookingBuilder()
        .withDateStarted(new Date("2022-01-01T00:00:00"))
        .withDateFinished(new Date("2022-01-01T00:15:00"))
        .build();
      jest.useFakeTimers({ now: new Date("2022-01-01T00:05:30") });

      const duration = booking.duration;

      expect(duration).toBe(5 * 60 + 30);
      jest.useRealTimers();
    });

    it("Корректно определяется длительность завершенного бронирования", () => {
      const booking = new BookingBuilder()
        .withDateStarted(new Date("2022-01-01T00:00:00"))
        .withDateFinished(new Date("2022-01-01T00:15:25"))
        .build();

      const duration = booking.duration;

      expect(duration).toBe(15 * 60 + 25);
    });
  });
});
