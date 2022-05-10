class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  #show, edit, destroy, update, new, create
  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end
  
  def create
    @car = Car.new(car_params)
    @car.save
    # Agregar renderizado si alcanza
  end
  
  def edit
    @car = Car.find(params[:id])
  end
  
  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car) #debería redirigir al show/id
  end

  def destroy
    @car =  Car.find(params[:id])
    @car.delete
    redirect_to cars_path #Redirige al index
  end

  private 
  def car_params
    params.require(:task).permit(:modelo, :anio, :precio, :ubicacion, :detalles, :capacidad)
  end
end
