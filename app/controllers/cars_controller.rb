class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  #show, edit, destroy, update, new, create 
end
