class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @info_car = Car.find_by(id: params[:id])
    @image = Car.find_by(id: params[:id]).images
  end

  def new
    @new_car = Car.new
    @styles = ["sport", "sedan", "truck", "luxury"]
    @arr = []
    i = 1996
    while i <= 2018
      @arr.push(i)
      i = i + 1
    end
  end

  def create
    car = Car.create(car_params)
    params[:car][:images].each do |img|
      req = Cloudinary::Uploader.upload(img)
      car.images.create(url: req["url"])
    end
    redirect_to cars_path (car)
  end

  def edit
    @new_car = Car.find_by(id: params[:id])
    @styles = ["sport", "sedan", "truck", "luxury"]
    @arr = []
    i = 1996
    while i <= 2018
      @arr.push(i)
      i = i + 1
    end
  end

  def update
    car = Car.find_by(id: params[:id])
    car.update(car_params)
    redirect_to car_path(car)
  end

  def destroy
    car = Car.find_by(id: params[:id])
    car.destroy
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:name, :year, :color, :style, :company_id)
  end
end
