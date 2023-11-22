import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import { Subscription } from "../types/subscription";
import { SubscriptionCard } from "./SubscriptionCard";
import styles from "./SubscriptionsListView.module.scss";

interface Props
  extends Omit<ComponentPropsWithoutRef<"ul">, "children" | "onSelect"> {
  subscriptions: Subscription[];
  selected?: Subscription["id"][];
  onSelect?: (subscription: Subscription, selected: boolean) => unknown;
}

const SubscriptionsListView: FC<Props> = ({
  subscriptions,
  onSelect,
  selected,
  className,
  ...props
}) => {
  className = clsx(styles.list, className);

  return (
    <ul className={className} {...props}>
      {subscriptions.map((subscription) => (
        <li key={subscription.id}>
          <SubscriptionCard
            subscription={subscription}
            onSelect={(selected) => onSelect?.(subscription, selected)}
            selected={selected?.includes(subscription.id)}
          />
        </li>
      ))}
    </ul>
  );
};

export { SubscriptionsListView };
