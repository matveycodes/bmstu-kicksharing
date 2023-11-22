import { PaginatedResponse, PaginationParams } from "../../api";
import { Subscription } from "./subscription";

type GetSubscriptionsParams = PaginationParams;

type GetSubscriptionsResponse = PaginatedResponse<Subscription>;

export { GetSubscriptionsParams, GetSubscriptionsResponse };
