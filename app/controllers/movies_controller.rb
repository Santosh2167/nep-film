class MoviesController < ApplicationController
  def index
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)
    # @movie.title = params[:movie]["title"]
    # render json: params[:movie]
    @movie.save

    redirect_to @movie


  
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private def movie_params

    params.require(:movie).permit(:title,:release_date,:genre,:runtime)

  end
end
