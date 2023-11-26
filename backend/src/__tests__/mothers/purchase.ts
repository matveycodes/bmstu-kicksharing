import { PurchaseBuilder } from "../builders/purchase";

class PurchaseMother {
  public static anActivePurchase() {
    const datePurchased = new Date();
    const dateStarted = new Date(datePurchased);
    const dateFinished = new Date(dateStarted.getTime() + 24 * 60 * 60 * 1000);

    return new PurchaseBuilder()
      .withDatePurchased(datePurchased)
      .withDateStarted(dateStarted)
      .withDateFinished(dateFinished);
  }
}

export { PurchaseMother };
