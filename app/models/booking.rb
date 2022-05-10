class Booking < ApplicationRecord
  belongs_to :car

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    if @booking.save
      redirect_to car_path(@car)
    else
      render 'cars/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to car_path(@booking.car)
  end

  private

  def booking_params
    params.require(:booking).permit(:fecha_inicio, :fecha_fin)
  end
end
