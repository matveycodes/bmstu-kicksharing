import flatten from "lodash/flatten";
import { useMemo } from "react";

import { usePurchasesPaginated } from "../hooks/usePurchasesPaginated";
import { Purchase } from "../types/purchase";
import { PurchasesListView } from "./PurchasesListView";

const PurchasesListController = () => {
  const { data, hasNextPage, fetchNextPage } = usePurchasesPaginated({
    pageSize: 5,
  });

  const purchases = useMemo(() => {
    return flatten<Purchase>(data?.pages.map((p) => p.results));
  }, [data?.pages]);

  if (!purchases.length) {
    return "Нет данных";
  }

  return (
    <PurchasesListView
      purchases={purchases}
      loadMore={hasNextPage ? fetchNextPage : undefined}
    />
  );
};

export { PurchasesListController };
