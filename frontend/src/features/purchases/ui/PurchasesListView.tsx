import clsx from "clsx";
import { ComponentPropsWithoutRef, FC } from "react";

import { Button } from "../../../components";
import { Purchase } from "../types/purchase";
import { PurchaseCard } from "./PurchaseCard";
import styles from "./PurchasesListView.module.scss";

interface Props extends ComponentPropsWithoutRef<"ol"> {
  purchases: Purchase[];
  loadMore?: () => Promise<unknown>;
}

const PurchasesListView: FC<Props> = ({
  purchases,
  loadMore,
  className,
  ...props
}) => {
  className = clsx(styles.list, className);

  return (
    <ol className={className} {...props}>
      {purchases.map((purchase) => (
        <li key={purchase.subscription.id + purchase.datePurchased}>
          <PurchaseCard purchase={purchase} />
        </li>
      ))}

      {loadMore && (
        <li>
          <Button onClick={loadMore} className={styles.loadMore}>
            Загрузить еще
          </Button>
        </li>
      )}
    </ol>
  );
};

export { PurchasesListView };
