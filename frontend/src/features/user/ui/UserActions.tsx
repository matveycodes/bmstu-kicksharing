import { LoginButton, LogoutButton } from "../../auth";
import { useCurrentUser } from "../hooks/useCurrentUser";
import styles from "./UserActions.module.scss";
import { UserButton } from "./UserButton";

const UserActions = () => {
  const { data: user, isLoading } = useCurrentUser();

  if (isLoading) {
    return null;
  }

  return (
    <div className={styles.actions}>
      {user ? (
        <>
          <UserButton />
          <LogoutButton />
        </>
      ) : (
        <LoginButton />
      )}
    </div>
  );
};

export { UserActions };
