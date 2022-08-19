class MetadataController < ApplicationController
  before_action :set_metadatum, only: %i[ show update destroy ]

  # GET /metadata
  def index
    @metadata = Metadatum.all

    render json: @metadata
  end

  # GET /metadata/1
  def show
    render json: @metadatum
  end

  # POST /metadata
  def create
    @metadatum = Metadatum.new(metadatum_params)

    if @metadatum.save
      render json: @metadatum, status: :created, location: @metadatum
    else
      render json: @metadatum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /metadata/1
  def update
    if @metadatum.update(metadatum_params)
      render json: @metadatum
    else
      render json: @metadatum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /metadata/1
  def destroy
    @metadatum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metadatum
      @metadatum = Metadatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def metadatum_params
      params.require(:metadatum).permit(:chave, :valor)
    end
end
