class KiddlesController < ApplicationController
  before_action :set_kiddle, only: [:show, :update, :destroy]

  # GET /kiddles
  def index
    @kiddles = Kiddle.all

    render json: @kiddles
  end

  # GET /kiddles/1
  def show
    render json: @kiddle
  end

  # POST /kiddles
  def create
    @kiddle = Kiddle.new(kiddle_params)

    if @kiddle.save
      render json: @kiddle, status: :created, location: @kiddle
    else
      render json: @kiddle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kiddles/1
  def update
    if @kiddle.update(kiddle_params)
      render json: @kiddle
    else
      render json: @kiddle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kiddles/1
  def destroy
    @kiddle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kiddle
      @kiddle = Kiddle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kiddle_params
      params.require(:kiddle).permit(:neighborhoods_id, :name)
    end
end
