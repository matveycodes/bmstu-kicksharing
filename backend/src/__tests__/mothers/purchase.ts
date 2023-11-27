import dayjs from "dayjs";

import { PurchaseBuilder } from "../builders/purchase";

class PurchaseMother {
  public static anActivePurchase() {
    const datePurchased = dayjs().toDate();
    const dateStarted = dayjs(datePurchased).toDate();
    const dateFinished = dayjs(dateStarted).add(1, "week").toDate();

    return new PurchaseBuilder()
      .withDatePurchased(datePurchased)
      .withDateStarted(dateStarted)
      .withDateFinished(dateFinished);
  }

  public static aFinishedPurchase() {
    const datePurchased = dayjs().subtract(1, "month").toDate();
    const dateStarted = dayjs(datePurchased).toDate();
    const dateFinished = dayjs(dateStarted).add(1, "week").toDate();

    return new PurchaseBuilder()
      .withDatePurchased(datePurchased)
      .withDateStarted(dateStarted)
      .withDateFinished(dateFinished);
  }
}

export { PurchaseMother };
