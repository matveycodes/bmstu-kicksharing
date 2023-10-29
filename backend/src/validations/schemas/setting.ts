import { z } from "zod";

const SETTINGS_BODY_SCHEMA = z.record(z.string(), z.string());

export { SETTINGS_BODY_SCHEMA };
