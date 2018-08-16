class NNetsController < ApplicationController
  before_action :set_n_net, only: [:show, :update, :destroy]

  # GET /n_nets
  def index
    @n_nets = NNet.all

    render json: @n_nets
  end

  # GET /n_nets/1
  def show
    render json: @n_net
  end

  # POST /n_nets
  def create
    @n_net = NNet.new(n_net_params)

    if @n_net.save
      render json: @n_net, status: :created, location: @n_net
    else
      render json: @n_net.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /n_nets/1
  def update
    if @n_net.update(n_net_params)
      render json: @n_net
    else
      render json: @n_net.errors, status: :unprocessable_entity
    end
  end

  # DELETE /n_nets/1
  def destroy
    @n_net.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_n_net
      @n_net = NNet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def n_net_params
      params.require(:n_net).permit(:neighborhoods_id, :name)
    end
end
