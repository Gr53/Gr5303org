class SupportNetsController < ApplicationController
  before_action :set_support_net, only: [:show, :update, :destroy]

  # GET /support_nets
  def index
    @support_nets = SupportNet.all

    render json: @support_nets
  end

  # GET /support_nets/1
  def show
    render json: @support_net
  end

  # POST /support_nets
  def create
    @support_net = SupportNet.new(support_net_params)

    if @support_net.save
      render json: @support_net, status: :created, location: @support_net
    else
      render json: @support_net.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /support_nets/1
  def update
    if @support_net.update(support_net_params)
      render json: @support_net
    else
      render json: @support_net.errors, status: :unprocessable_entity
    end
  end

  # DELETE /support_nets/1
  def destroy
    @support_net.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_net
      @support_net = SupportNet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def support_net_params
      params.require(:support_net).permit(:nets_id, :name)
    end
end
