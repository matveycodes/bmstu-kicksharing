import clsx from "clsx";
import { ComponentPropsWithoutRef, FC, useState } from "react";

import { PurchaseButton } from "../../purchases";
import { Subscription } from "../types/subscription";
import styles from "./AvailableSubscriptionsView.module.scss";
import { SubscriptionsListView } from "./SubscriptionsListView";

interface Props extends ComponentPropsWithoutRef<"div"> {
  subscriptions: Subscription[];
}

const AvailableSubscriptionsView: FC<Props> = ({
  subscriptions,
  className,
  ...props
}) => {
  const [selectedSubscription, setSelectedSubscription] =
    useState<Subscription>();

  const onSelect = (subscription: Subscription, selected: boolean) => {
    const newSelectedSubscription = selected ? subscription : undefined;
    setSelectedSubscription(newSelectedSubscription);
  };

  className = clsx(styles.subscriptions, className);

  return (
    <div className={className} {...props}>
      <SubscriptionsListView
        subscriptions={subscriptions}
        selected={selectedSubscription ? [selectedSubscription.id] : []}
        onSelect={onSelect}
      />
      <PurchaseButton subscriptionId={selectedSubscription?.id} />
    </div>
  );
};

export { AvailableSubscriptionsView };
