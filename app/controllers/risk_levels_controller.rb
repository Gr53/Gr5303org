class RiskLevelsController < ApplicationController
  before_action :set_risk_level, only: [:show, :update, :destroy]

  # GET /risk_levels
  def index
    @risk_levels = RiskLevel.all

    render json: @risk_levels
  end

  # GET /risk_levels/1
  def show
    render json: @risk_level
  end

  # POST /risk_levels
  def create
    @risk_level = RiskLevel.new(risk_level_params)

    if @risk_level.save
      render json: @risk_level, status: :created, location: @risk_level
    else
      render json: @risk_level.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /risk_levels/1
  def update
    if @risk_level.update(risk_level_params)
      render json: @risk_level
    else
      render json: @risk_level.errors, status: :unprocessable_entity
    end
  end

  # DELETE /risk_levels/1
  def destroy
    @risk_level.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risk_level
      @risk_level = RiskLevel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def risk_level_params
      params.require(:risk_level).permit(:level)
    end
end
