import { Tabs } from "../../../components";
import { PurchasesList } from "../../purchases";
import { AvailableSubscriptionsController } from "./AvailableSubscriptionsController";

const Subscriptions = () => {
  return (
    <Tabs>
      <Tabs.TabList>
        <Tabs.Tab>Доступные</Tabs.Tab>
        <Tabs.Tab>Купленные</Tabs.Tab>
      </Tabs.TabList>
      <Tabs.TabPanel>
        <AvailableSubscriptionsController />
      </Tabs.TabPanel>
      <Tabs.TabPanel>
        <PurchasesList />
      </Tabs.TabPanel>
    </Tabs>
  );
};

export { Subscriptions };
