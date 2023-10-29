import { FC, useMemo } from "react";
import { Badge, BadgeProps } from "@chakra-ui/react";

import { getBatteryLevelColor } from "../utils/battery-level";
import { Ping } from "../../pings";

interface Props extends Omit<BadgeProps, "children"> {
  ping: Ping;
}

const ScooterBatteryLevelBadge: FC<Props> = ({ ping, ...props }) => {
  const colorScheme = useMemo(() => {
    return getBatteryLevelColor(ping.batteryLevel);
  }, [ping.batteryLevel]);

  return (
    <Badge colorScheme={colorScheme} {...props}>
      {ping.batteryLevel}%
    </Badge>
  );
};

export { ScooterBatteryLevelBadge };
