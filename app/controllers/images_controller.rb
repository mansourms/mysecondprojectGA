class ImagesController < ApplicationController
  def index
  end

  def show
    @image = Image.find_by(id: params[:id])
  end

  def edit
    @image = Image.find_by(id: params[:id])
  end

  def update
    image = Image.find_by(id: params[:id])
    if params[:image]
      req = Cloudinary::Uploader.upload(params[:image][:url])
      image.update(url: req["url"])
      redirect_to car_path(image.car.id)
    else
      redirect_to edit_image_path(image)
    end
  end

  def destroy
    image = Image.find_by(id: params[:id])
    image.destroy
    redirect_to cars_path
  end

  private

  def image_params
    params.require(:image).permit(:url)
  end
end
