class BandsController < ApplicationController
  def new
    @band = Band.new
    @genres = Genre.all
  end

  def create
    @band = Band.create(band_params)

    @band.save
    redirect_to genre_path(@band.genre_id)
  end

  private

  def band_params
    params.require(:band).permit(:name, :price, :rate, :image_url, :review, :genre_id)
  end
end
