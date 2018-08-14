class IdentificationTypesController < ApplicationController
  before_action :set_identification_type, only: [:show, :update, :destroy]

  # GET /identification_types
  def index
    @identification_types = IdentificationType.all

    render json: @identification_types
  end

  # GET /identification_types/1
  def show
    render json: @identification_type
  end

  # POST /identification_types
  def create
    @identification_type = IdentificationType.new(identification_type_params)

    if @identification_type.save
      render json: @identification_type, status: :created, location: @identification_type
    else
      render json: @identification_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /identification_types/1
  def update
    if @identification_type.update(identification_type_params)
      render json: @identification_type
    else
      render json: @identification_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /identification_types/1
  def destroy
    @identification_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identification_type
      @identification_type = IdentificationType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def identification_type_params
      params.require(:identification_type).permit(:identificationtype)
    end
end
