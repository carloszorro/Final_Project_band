class WelcomeController < ApplicationController
  def index
    @genres = Genre.all
  end

  def create
  end
end
