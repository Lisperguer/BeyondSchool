class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
  #Para que pueda ver los booking que ha hecho
end
