import { Scooter, ScooterId, ScooterStatus } from "../../../models/scooter";
import { ScooterModelId } from "../../../models/scooter-model";
import { ScooterRow } from "./types";

const parseScooterRow = (row: ScooterRow): Scooter => {
  return new Scooter({
    id: row.id as ScooterId,
    modelId: row.model_id as ScooterModelId,
    status: row.status as ScooterStatus,
    number: row.number,
  });
};

export { parseScooterRow };
