import * as crypto from "crypto";
import orderBy from "lodash/orderBy";

import { createPaginatedResponse } from "../../__tests__/helpers/pagination";
import { NotFoundError } from "../../errors/not-found";
import { IBookingRepo } from "../../interfaces/booking-repo";
import { Booking, BookingId } from "../../models/booking";
import { ScooterId } from "../../models/scooter";
import { UserId } from "../../models/user";
import { PaginationRequest } from "../../vo/pagination";

class BookingMockRepo implements IBookingRepo {
  private _bookings: Booking[] = [];

  private getActive() {
    const now = new Date();
    return this._bookings.filter((b) => b.dateFinished > now);
  }

  public async getActiveByScooterId(scooterId: ScooterId) {
    const active = this.getActive();
    return active.filter((b) => b.scooterId === scooterId);
  }

  public async getActiveByUserId(userId: UserId) {
    const active = this.getActive();
    return active.filter((b) => b.userId === userId);
  }

  public async getActiveByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    const active = await this.getActiveByUserId(userId);
    return createPaginatedResponse(active, pagination);
  }

  public async getActivePaginated(pagination: PaginationRequest) {
    const active = this.getActive();
    return createPaginatedResponse(active, pagination);
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return createPaginatedResponse(this._bookings, pagination);
  }

  public async getById(id: BookingId) {
    const booking = this._bookings.find((b) => b.id === id);

    if (!booking) {
      throw new NotFoundError("Бронирование не найдено");
    }

    return booking;
  }

  public async getFinishedPaginated(pagination: PaginationRequest) {
    const now = new Date();

    const finishedBookings = this._bookings.filter((b) => {
      return b.dateFinished <= now;
    });

    return createPaginatedResponse(finishedBookings, pagination);
  }

  public async isScooterTaken(scooterId: ScooterId) {
    const activeScooterBookings = await this.getActiveByScooterId(scooterId);
    return activeScooterBookings.length > 0;
  }

  public nextId() {
    return crypto.randomUUID() as BookingId;
  }

  public async save(booking: Booking) {
    this.remove(booking.id);
    this._bookings.push(booking);
    this._bookings = orderBy(this._bookings, ["date_started", "desc"]);
  }

  private remove(id: BookingId) {
    this._bookings = this._bookings.filter((b) => b.id !== id);
  }
}

export { BookingMockRepo };
