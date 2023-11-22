import { FC } from "react";
import Countdown, {
  CountdownProps,
  CountdownRendererFn,
} from "react-countdown";

interface Props extends Omit<CountdownProps, "date"> {
  counter: Date | string;
}

const ActivityCounter: FC<Props> = ({ counter, ...props }) => {
  return <Countdown date={counter} overtime renderer={renderer} {...props} />;
};

const renderer: CountdownRendererFn = ({ formatted: { minutes, seconds } }) => {
  return (
    <span>
      {minutes}:{seconds}
    </span>
  );
};

export { ActivityCounter };
