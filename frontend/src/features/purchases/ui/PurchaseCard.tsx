import clsx from "clsx";
import dayjs from "dayjs";
import { ComponentPropsWithoutRef, FC, useMemo } from "react";

import { Typography } from "../../../components";
import { Purchase } from "../types/purchase";
import styles from "./PurchaseCard.module.scss";

interface Props extends ComponentPropsWithoutRef<"div"> {
  purchase: Purchase;
}

const PurchaseCard: FC<Props> = ({ purchase, className, ...props }) => {
  const isActive = dayjs(purchase.dateFinished).isAfter();

  const range = useMemo(() => {
    const startFormatted = dayjs(purchase.dateStarted).format("DD.MM.YYYY");
    const finishFormatted = dayjs(purchase.dateFinished).format("DD.MM.YYYY");
    return `с ${startFormatted} по ${finishFormatted}`;
  }, [purchase]);

  className = clsx(styles.card, className);

  return (
    <div className={className} {...props}>
      <Typography.Text bold>{purchase.subscription.title}</Typography.Text>

      {isActive ? (
        <Typography.Text>Действует {range}</Typography.Text>
      ) : (
        <Typography.Text>Действовала {range}</Typography.Text>
      )}
    </div>
  );
};

export { PurchaseCard };
