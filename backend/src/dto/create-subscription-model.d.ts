import { SubscriptionId } from "../models/subscription";

interface CreateSubscriptionModelDto {
  id: SubscriptionId;
  title: string;
  price: number;
  duration: number;
}

export { CreateSubscriptionModelDto };
