import { useRidesCount } from "../hooks/useRidesCount";
import { RidesCountBannerView } from "./RidesCountBannerView";

const RidesCountBannerController = () => {
  const { data: count } = useRidesCount();

  if (!Number.isFinite(count)) {
    return null;
  }

  return <RidesCountBannerView count={count!} />;
};

export { RidesCountBannerController };
