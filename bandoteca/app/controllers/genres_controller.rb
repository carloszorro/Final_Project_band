class GenresController < ApplicationController
  def index
    
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)

    @genre.save
    redirect_to root_path
  end

  def show
    @genre = Genre.find(params[:id])
    @bands = @genre.bands
    @reservations = Reservation.new
  end

  private

  def genre_params
    params.require(:genre).permit(:name_genre, :image_url_genre)
  end
end
