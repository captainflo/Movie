class SearchController < ApplicationController

  def index
    @movies = Movie.where('title LIKE ?', "%#{params[:query]}%")
    render 'movies/index'
  end
end
