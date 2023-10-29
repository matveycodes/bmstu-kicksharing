import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateBookingControllerDto } from "../dto/create-booking-controller";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { IBookingController } from "../interfaces/booking-controller";
import { IBookingSerializer } from "../interfaces/booking-serializer";
import { IBookingService } from "../interfaces/booking-service";
import { BookingId } from "../models/booking";
import { ScooterId } from "../models/scooter";
import {
  CREATE_BOOKING_BODY_SCHEMA,
  GET_BOOKINGS_QUERY_SCHEMA,
} from "../validations/schemas/booking";

class BookingController implements IBookingController {
  private _bookingService: IBookingService;
  private _bookingSerializer: IBookingSerializer;

  public constructor(dto: CreateBookingControllerDto) {
    this._bookingService = dto.bookingService;
    this._bookingSerializer = dto.bookingSerializer;
  }

  public getAll: RequestHandler = async ({ user, pagination, query }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "admin") {
      throw new PermissionError();
    }

    const { isActive } = await GET_BOOKINGS_QUERY_SCHEMA.parseAsync(query);

    const { results, ...response } =
      isActive === true
        ? await this._bookingService.getActivePaginated(pagination)
        : isActive === false
        ? await this._bookingService.getFinishedPaginated(pagination)
        : await this._bookingService.getAllPaginated(pagination);
    const serializedResponse = {
      ...response,
      results: await this._bookingSerializer.serialize(results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };

  public get: RequestHandler = async ({ user, params }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (!["admin", "customer"].includes(user.role)) {
      throw new PermissionError();
    }

    const id = params.id as BookingId;
    const booking = await this._bookingService.getById(id);

    if (user.role === "customer" && booking.userId !== user.id) {
      throw new PermissionError();
    }

    const serializedBooking = await this._bookingSerializer.serialize(booking);
    res.status(StatusCodes.OK).json(serializedBooking);
  };

  public cancel: RequestHandler = async ({ user, params }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "customer") {
      throw new PermissionError();
    }

    const id = params.id as BookingId;
    const booking = await this._bookingService.getById(id);

    if (booking.userId !== user.id) {
      throw new PermissionError();
    }

    await this._bookingService.cancel(id);
    res.status(StatusCodes.OK).end();
  };

  public create: RequestHandler = async ({ user, body }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "customer") {
      throw new PermissionError();
    }

    const { scooterId } = await CREATE_BOOKING_BODY_SCHEMA.parseAsync(body);
    await this._bookingService.create(scooterId as ScooterId, user.id);
    res.status(StatusCodes.CREATED).end();
  };
}

export { BookingController };
