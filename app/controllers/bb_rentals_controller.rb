class BbRentalsController < ApplicationController
  before_action :set_bb_rental, only: %i[ show edit update destroy ]

  # GET /bb_rentals or /bb_rentals.json
  def index
    @bb_rentals = BbRental.all
  end

  # GET /bb_rentals/1 or /bb_rentals/1.json
  def show
  end

  # GET /bb_rentals/new
  def new
    @bb_rental = BbRental.new
  end

  # GET /bb_rentals/1/edit
  def edit
  end

  # POST /bb_rentals or /bb_rentals.json
  def create
    @bb_rental = BbRental.new(bb_rental_params)

    respond_to do |format|
      if @bb_rental.save
        format.html { redirect_to bb_rental_url(@bb_rental), notice: "Renta Creada con Exito!" }
        format.json { render :show, status: :created, location: @bb_rental }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bb_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bb_rentals/1 or /bb_rentals/1.json
  def update
    respond_to do |format|
      if @bb_rental.update(bb_rental_params)
        format.html { redirect_to bb_rental_url(@bb_rental), notice: "Renta Modificada con Exito!" }
        format.json { render :show, status: :ok, location: @bb_rental }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bb_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bb_rentals/1 or /bb_rentals/1.json
  def destroy
    @bb_rental.destroy

    respond_to do |format|
      format.html { redirect_to bb_rentals_url, notice: "Renta Eliminada con Exito! :()" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bb_rental
      @bb_rental = BbRental.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bb_rental_params
      params.require(:bb_rental).permit(:bb_client_id, :bb_movie_id)
    end
end
