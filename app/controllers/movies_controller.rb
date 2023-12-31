class MoviesController < ApplicationController
  # def index
  #   # @movies = Movie.all
  #   if params[:query].present?
  #     @movies = Movie.where("title ILIKE ?", "%#{params[:query]}%")
  #   else
  #     @movies = Movie.all
  #   end
  # end

  def index
    if params[:query].present?
      @movies = Movie.search_global(params[:query])
    else
      @movies = Movie.all
    end
  end
end
