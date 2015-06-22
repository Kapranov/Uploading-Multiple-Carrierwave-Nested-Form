class FraudsController < ApplicationController
  before_action :set_fraud, only: [:show, :edit, :update, :destroy]

  # GET /frauds
  def index
    @frauds = Fraud.all
  end

  # GET /frauds/1
  def show
    @images = @fraud.images.all
  end

  # GET /frauds/new
  def new
    @fraud = Fraud.new
  end

  # GET /frauds/1/edit
  def edit
  end

  # POST /frauds
  def create
    @fraud = Fraud.new(fraud_params)

    if @fraud.save
      redirect_to @fraud, notice: 'Fraud was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /frauds/1
  def update
    if @fraud.update(fraud_params)
      redirect_to @fraud, notice: 'Fraud was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /frauds/1
  def destroy
    @fraud.destroy
    redirect_to frauds_url, notice: 'Fraud was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fraud
      @fraud = Fraud.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fraud_params
      params.require(:fraud).permit(
        :name,
        images_attributes: [
          :id,
          :image,
          :image_cache,
          :remove_image,
          :_destroy
        ]
      )
    end
end
