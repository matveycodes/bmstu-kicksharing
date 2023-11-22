import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import { Typography } from "../../../components";
import { Subscription } from "../types/subscription";
import styles from "./SubscriptionCard.module.scss";

interface Props
  extends Omit<ComponentPropsWithoutRef<"div">, "children" | "onSelect"> {
  subscription: Subscription;
  selected?: boolean;
  onSelect?: (selected: boolean) => unknown;
}

const SubscriptionCard: FC<Props> = ({
  subscription,
  className,
  selected,
  onSelect,
  ...props
}) => {
  className = clsx(styles.card, selected && styles.selected, className);

  return (
    <div className={className} {...props}>
      <input
        type="checkbox"
        className={styles.checkbox}
        value={selected ? "true" : "false"}
        onChange={() => onSelect?.(!selected)}
      />

      <div className={styles.info}>
        <Typography.Text bold>{subscription.title}</Typography.Text>
        <Typography.Text>Бесплатное начало поездок</Typography.Text>
      </div>

      <Typography.Text bold className={styles.price}>
        {subscription.price / 100} ₽
      </Typography.Text>
    </div>
  );
};

export { SubscriptionCard };
