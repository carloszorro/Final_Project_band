class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
  end

  def create
    @reservation = Reservation.create(reservation_params)

    @reservation.save
    redirect_to reservations_path
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @band = @reservation.band.genre_id
    @reservation.destroy
    redirect_to genre_path(@band)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :band_id, :user_id)
  end
end
