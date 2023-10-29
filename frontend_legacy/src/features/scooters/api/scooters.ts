import { client } from "features/api";

const beepScooter = async (id: string) => {
  await client.post(`/scooters/${id}/beep/`);
};

const turnScooterLightsOn = async (id: string) => {
  await client.post(`/scooters/${id}/turn-lights-on/`);
};

const unlockScooter = async (id: string) => {
  await client.post(`/scooters/${id}/unlock/`);
};

export { beepScooter, turnScooterLightsOn, unlockScooter };
