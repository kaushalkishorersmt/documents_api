class MicroserviceDocumentsController < ApplicationController
  before_action :set_microservice_document, only: [:show, :update, :destroy]

  # GET /microservice_documents
  def index
    @microservice_documents = MicroserviceDocument.order('created_at DESC')

    render json: @microservice_documents
  end

  # GET /microservice_documents/1
  def show
    render json: @microservice_document
  end

  # POST /microservice_documents
  def create
    @microservice_document = MicroserviceDocument.new(microservice_document_params)

    if @microservice_document.save
      render json: @microservice_document, status: :created, location: @microservice_document
    else
      render json: @microservice_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /microservice_documents/1
  def update
    if @microservice_document.update(microservice_document_params)
      render json: @microservice_document
    else
      render json: @microservice_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /microservice_documents/1
  def destroy
    @microservice_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microservice_document
      @microservice_document = MicroserviceDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def microservice_document_params
      params.require(:microservice_document).permit(:title, :description, :file_url, :image_url)
    end
end
