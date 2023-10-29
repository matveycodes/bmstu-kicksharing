import { PaginatedResponse, Response } from "features/api";

import { RestrictedZone } from "./restricted-zone";

type GetRestrictedZonesResponse = PaginatedResponse<RestrictedZone>;

export { GetRestrictedZonesResponse };
