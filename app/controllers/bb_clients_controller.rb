class BbClientsController < ApplicationController
  before_action :set_bb_client, only: %i[ show edit update destroy ]

  # GET /bb_clients or /bb_clients.json
  def index
    @bb_clients = BbClient.all
  end

  # GET /bb_clients/1 or /bb_clients/1.json
  def show
  end

  # GET /bb_clients/new
  def new
    @bb_client = BbClient.new
  end

  # GET /bb_clients/1/edit
  def edit
  end

  # POST /bb_clients or /bb_clients.json
  def create
    @bb_client = BbClient.new(bb_client_params)

    respond_to do |format|
      if @bb_client.save
        format.html { redirect_to bb_client_url(@bb_client), notice: "Cliente Creado Satisfactoriamente!!!!" }
        format.json { render :show, status: :created, location: @bb_client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bb_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bb_clients/1 or /bb_clients/1.json
  def update
    respond_to do |format|
      if @bb_client.update(bb_client_params)
        format.html { redirect_to bb_client_url(@bb_client), notice: "Cliente Actualizado Satisfactoriamente!!!!." }
        format.json { render :show, status: :ok, location: @bb_client }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bb_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bb_clients/1 or /bb_clients/1.json
  def destroy
    @bb_client.destroy

    respond_to do |format|
      format.html { redirect_to bb_clients_url, notice: "Cliente Destruido Satisfactoriamente!!!!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bb_client
      @bb_client = BbClient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bb_client_params
      params.require(:bb_client).permit(:avatar, :name, :email)
    end
end
