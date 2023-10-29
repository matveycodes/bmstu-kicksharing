import { IPurchaseSerializer } from "../interfaces/purchase-serializer";
import { IPurchaseService } from "../interfaces/purchase-service";

interface CreatePurchaseControllerDto {
  purchaseService: IPurchaseService;
  purchaseSerializer: IPurchaseSerializer;
}

export { CreatePurchaseControllerDto };
