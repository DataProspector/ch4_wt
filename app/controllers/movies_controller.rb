# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def show
    id = params[:id] # retrieves movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique id
    # will render app/views/movies/show.html.haml by default
  end
end