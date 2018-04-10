class MedicalHistoriesController < ApplicationController
  before_action :set_medical_history, only: [:show, :update, :destroy]

  # GET /medical_histories
  # GET /medical_histories.json
  def index
    @medical_histories = MedicalHistory.all
    render json: @medical_histories
  end

  # GET /medical_histories/1
  # GET /medical_histories/1.json
  def show
    render json: @medical_history
  end

  # POST /medical_histories
  # POST /medical_histories.json
  def create
    @medical_history = MedicalHistory.new(medical_history_params)

    if @medical_history.save
      render json: @medical_history, status: :created, location: @medical_history
    else
      render json: @medical_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medical_histories/1
  # PATCH/PUT /medical_histories/1.json
  def update
    if @medical_history.update(medical_history_params)
      render json: @medical_history, status: :ok, location: @medical_history
    else
      render json: @medical_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medical_histories/1
  # DELETE /medical_histories/1.json
  def destroy
    @medical_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_history
      @medical_history = MedicalHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_history_params
      params.require(:medical_history).permit(:user_id, :name, :value_type, :value)
    end
end
