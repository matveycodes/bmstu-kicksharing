import NiceModal from "@ebay/nice-modal-react";
import plural from "plural-ru";
import { ComponentProps, FC } from "react";
import { SetOptional } from "type-fest";

import { Banner, Button, Typography } from "../../../components";
import { SubscriptionsModal } from "../../subscriptions";
import { PastRidesModal } from "./PastRidesModal";
import styles from "./RidesCountBannerView.module.scss";

interface Props extends SetOptional<ComponentProps<typeof Banner>, "title"> {
  count: number;
}

const RidesCountBannerView: FC<Props> = ({ count, ...props }) => {
  return (
    <Banner title="Поездки" {...props}>
      <Typography.Text>
        На вашем аккаунте{" "}
        {plural(
          count,
          "%d активная поездка",
          "%d активных поездки",
          "%d активных поездок",
        )}
      </Typography.Text>
      <div className={styles.links}>
        <Button variant="link" onClick={onHistoryClick}>
          История поездок
        </Button>
        <Button variant="link" onClick={onSubscriptionsClick}>
          Подписки
        </Button>
      </div>
    </Banner>
  );
};

const onSubscriptionsClick = () => {
  void NiceModal.show(SubscriptionsModal);
};

const onHistoryClick = () => {
  void NiceModal.show(PastRidesModal);
};

export { RidesCountBannerView };
