import { FC, useMemo } from "react";
import {
  Card,
  CardBody,
  CardProps,
  Heading,
  Stack,
  Text,
} from "@chakra-ui/react";
import dayjs from "dayjs";

import { formatDate } from "utils/time";

import { PurchasedSubscription } from "../types/purchased-subscription";

interface Props extends CardProps {
  purchasedSubscription: PurchasedSubscription;
}

const STATUS_COLOR: Record<string, string> = {
  active: "green",
  finished: "red",
};

const PurchasedSubscriptionCard: FC<Props> = ({
  purchasedSubscription,
  ...props
}) => {
  const status = useMemo(() => {
    const hasStarted = dayjs().isAfter(purchasedSubscription.dateStarted);
    const hasFinished = dayjs().isAfter(purchasedSubscription.dateFinished);

    if (!hasStarted) {
      return "upcoming";
    } else if (hasStarted && !hasFinished) {
      return "active";
    } else {
      return "finished";
    }
  }, [purchasedSubscription]);

  return (
    <Card {...props}>
      <CardBody>
        <Stack>
          <Heading size="sm">
            {purchasedSubscription.subscription.title}
          </Heading>
          <Text>Куплена {formatDate(purchasedSubscription.datePurchased)}</Text>

          {status === "upcoming" ? (
            <>
              <Text>
                Начнёт действовать с{" "}
                {formatDate(purchasedSubscription.dateStarted, false)}
              </Text>
              <Text>
                Будет действовать до{" "}
                {formatDate(purchasedSubscription.dateFinished, false)}
              </Text>
            </>
          ) : (
            <Text color={STATUS_COLOR[status]}>
              {status === "active" ? "Действует до" : "Истекла"}{" "}
              {formatDate(purchasedSubscription.dateFinished, false)}
            </Text>
          )}
        </Stack>
      </CardBody>
    </Card>
  );
};

export { PurchasedSubscriptionCard };
