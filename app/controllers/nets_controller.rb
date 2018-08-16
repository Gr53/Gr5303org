class NetsController < ApplicationController
  before_action :set_net, only: [:show, :update, :destroy]

  # GET /nets
  def index
    @nets = Net.all

    render json: @nets
  end

  # GET /nets/1
  def show
    render json: @net
  end

  # POST /nets
  def create
    @net = Net.new(net_params)

    if @net.save
      render json: @net, status: :created, location: @net
    else
      render json: @net.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nets/1
  def update
    if @net.update(net_params)
      render json: @net
    else
      render json: @net.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nets/1
  def destroy
    @net.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_net
      @net = Net.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def net_params
      params.require(:net).permit(:neighborhoods_id, :name)
    end
end
