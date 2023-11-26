import { SettingBuilder } from "../builders/setting";

class SettingMother {
  public static aMaxConcurrentBookingsSetting() {
    return new SettingBuilder()
      .withName("MAX_CONCURRENT_BOOKINGS")
      .withValue("3");
  }

  public static aMaxBookingDurationSetting() {
    return new SettingBuilder()
      .withName("MAX_BOOKING_DURATION")
      .withValue("600");
  }

  public static aPerMinutePriceSetting() {
    return new SettingBuilder().withName("PER_MINUTE_PRICE").withValue("700");
  }

  public static aStartPriceSetting() {
    return new SettingBuilder().withName("START_PRICE").withValue("5000");
  }

  public static aMinUserAgeSetting() {
    return new SettingBuilder().withName("MIN_USER_AGE").withValue("18");
  }

  public static aMaxConcurrentRidesSetting() {
    return new SettingBuilder().withName("MAX_CONCURRENT_RIDES").withValue("3");
  }
}

export { SettingMother };
