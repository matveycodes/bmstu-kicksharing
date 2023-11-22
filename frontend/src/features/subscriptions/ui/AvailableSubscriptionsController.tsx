import { useSubscriptions } from "../hooks/useSubscriptions";
import { AvailableSubscriptionsView } from "./AvailableSubscriptionsView";

const AvailableSubscriptionsController = () => {
  const { data: subscriptions = [] } = useSubscriptions();

  if (!subscriptions.length) {
    return "Нет данных";
  }

  return <AvailableSubscriptionsView subscriptions={subscriptions} />;
};

export { AvailableSubscriptionsController };
