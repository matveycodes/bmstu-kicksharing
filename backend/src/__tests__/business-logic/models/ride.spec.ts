import { RideBuilder } from "../../builders/ride";

describe("Ride", () => {
  describe("Длительность поездки", () => {
    it("Корректно определяется длительность активной поездки", () => {
      const ride = new RideBuilder()
        .withDateStarted(new Date("2022-01-01T00:00:00"))
        .withDateFinished(undefined)
        .build();
      jest.useFakeTimers({ now: new Date("2022-01-01T00:05:45") });

      const duration = ride.duration;

      expect(duration).toBe(5 * 60 + 45);
      jest.useRealTimers();
    });

    it("Корректно определяется длительность завершенной поездки", () => {
      const ride = new RideBuilder()
        .withDateStarted(new Date("2022-01-01T00:00:00"))
        .withDateFinished(new Date("2022-01-01T00:15:25"))
        .build();

      const duration = ride.duration;

      expect(duration).toBe(15 * 60 + 25);
    });
  });

  describe("Стоимость поездки", () => {
    it("Корректно вычисляет общую стоимость поездки", () => {
      const ride = new RideBuilder()
        .withStartPrice(10)
        .withPerMinutePrice(1)
        .withDateStarted(new Date("2022-01-01T00:00:00"))
        .withDateFinished(new Date("2022-01-01T00:15:25"))
        .build();

      const totalPrice = ride.totalPrice;

      expect(totalPrice).toBe(25);
    });

    it("Корректно рассчитывается стоимость поездки без платы за старт", () => {
      const ride = new RideBuilder()
        .withStartPrice(0)
        .withPerMinutePrice(7)
        .withDateStarted(new Date("2022-01-01T00:00:00"))
        .withDateFinished(new Date("2022-01-01T00:15:25"))
        .build();

      const totalPrice = ride.totalPrice;

      expect(totalPrice).toBe(105);
    });
  });
});
