import clsx from "clsx";
import { ComponentPropsWithoutRef, FC, useState } from "react";

import CloseIcon from "../../assets/icons/cross.svg?react";
import { IconButton } from "../IconButton";
import { Typography } from "../Typography";
import styles from "./Activity.module.scss";
import { ActivityCounter } from "./ActivityCounter";

interface Props extends Omit<ComponentPropsWithoutRef<"div">, "children"> {
  entity: string;
  counter: string | Date;
  meta?: string;
  onRemove?: () => unknown | Promise<unknown>;
  onComplete?: () => unknown;
}

const Activity: FC<Props> = ({
  entity,
  counter,
  meta,
  onRemove,
  onComplete,
  className,
  ...props
}) => {
  const [isLoading, setIsLoading] = useState(false);

  const onBeforeRemove = async () => {
    setIsLoading(true);
    await onRemove?.();
    setIsLoading(false);
  };

  className = clsx(styles.activity, className);

  return (
    <div className={className} {...props}>
      <div className={styles.info}>
        <Typography.Text bold>{entity}</Typography.Text>
        <Typography.Text>
          <ActivityCounter counter={counter} onComplete={onComplete} />
        </Typography.Text>
      </div>

      <div className={styles.meta}>
        {meta && <Typography.Text>{meta}</Typography.Text>}
        {onRemove && (
          <IconButton
            icon={CloseIcon}
            onClick={onBeforeRemove}
            disabled={isLoading}
          />
        )}
      </div>
    </div>
  );
};

export { Activity };
