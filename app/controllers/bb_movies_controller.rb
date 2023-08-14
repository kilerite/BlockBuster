class BbMoviesController < ApplicationController
  before_action :set_bb_movie, only: %i[ show edit update destroy ]

  # GET /bb_movies or /bb_movies.json
  def index
    @bb_movies = BbMovie.all
  end

  # GET /bb_movies/1 or /bb_movies/1.json
  def show
  end

  # GET /bb_movies/new
  def new
    @bb_movie = BbMovie.new
  end

  # GET /bb_movies/1/edit
  def edit
  end

  # POST /bb_movies or /bb_movies.json
  def create
    @bb_movie = BbMovie.new(bb_movie_params)

    respond_to do |format|
      if @bb_movie.save
        format.html { redirect_to bb_movie_url(@bb_movie), notice: "Pelicula Creada con exito! " }
        format.json { render :show, status: :created, location: @bb_movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bb_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bb_movies/1 or /bb_movies/1.json
  def update
    respond_to do |format|
      if @bb_movie.update(bb_movie_params)
        format.html { redirect_to bb_movie_url(@bb_movie), notice: "Pelicula Modificada con exito! " }
        format.json { render :show, status: :ok, location: @bb_movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bb_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bb_movies/1 or /bb_movies/1.json
  def destroy
    @bb_movie.destroy
 

    respond_to do |format|
      format.html { redirect_to bb_movies_url, notice: "Pelicula Destruidax|   con exito! " }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bb_movie
      @bb_movie = BbMovie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bb_movie_params
      params.require(:bb_movie).permit(:image, :name)
    end
end
