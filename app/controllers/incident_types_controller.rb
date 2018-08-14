class IncidentTypesController < ApplicationController
  before_action :set_incident_type, only: [:show, :update, :destroy]

  # GET /incident_types
  def index
    @incident_types = IncidentType.all

    render json: @incident_types
  end

  # GET /incident_types/1
  def show
    render json: @incident_type
  end

  # POST /incident_types
  def create
    @incident_type = IncidentType.new(incident_type_params)

    if @incident_type.save
      render json: @incident_type, status: :created, location: @incident_type
    else
      render json: @incident_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /incident_types/1
  def update
    if @incident_type.update(incident_type_params)
      render json: @incident_type
    else
      render json: @incident_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /incident_types/1
  def destroy
    @incident_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident_type
      @incident_type = IncidentType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def incident_type_params
      params.require(:incident_type).permit(:name, :risklevels_id)
    end
end
