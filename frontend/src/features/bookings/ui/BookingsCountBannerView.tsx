import plural from "plural-ru";
import { ComponentProps, FC } from "react";
import { SetOptional } from "type-fest";

import { Banner, Typography } from "../../../components";

interface Props extends SetOptional<ComponentProps<typeof Banner>, "title"> {
  count: number;
}

const BookingsCountBannerView: FC<Props> = ({ count, ...props }) => {
  return (
    <Banner title="Бронирования" {...props}>
      <Typography.Text>
        На вашем аккаунте{" "}
        {plural(
          count,
          "%d активное бронирование",
          "%d активных бронирования",
          "%d активных бронирований",
        )}
      </Typography.Text>
    </Banner>
  );
};

export { BookingsCountBannerView };
