class MoviesController < ApplicationController
  def index
  @movies = Movie.all
  end

  def new
  @movie = Movie.new
  end

  def create
  @movie = Movie.new(params[:movie])
  if @movie.save
  flash[:notice] = "Movie added Successfully"
  redirect_to movie_path(@movie)
  else 
  flash[:alert] = "Movie not added Successfully"
  render 'new'
  end
  end

  def edit
  @movie = Movie.find(params[:id])
  end

  def update
  @movie = Movie.find(params[:id])
  @movie.update_attributes!(params[:movie])
  redirect_to movie_path(@movie)
  end

  def show
  @movie = Movie.find(params[:id])
   end

  def destroy
  @movie = Movie.find(params[:id])
  @movie.destroy
  flash[:notice] = "Movie has been deleted"
  redirect_to movies_path
  end
end
