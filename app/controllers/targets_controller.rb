class TargetsController < ApplicationController
  before_action :set_target, only: [:show, :update, :destroy]

  # GET /targets
  # GET /targets.json
  def index
    @targets = Target.all
    render json: @targets
  end

  # GET /targets/1
  # GET /targets/1.json
  def show
    render json: @target
  end

  # POST /targets
  # POST /targets.json
  def create
    @target = Target.new(target_params)

    if @target.save
      render json: @target, status: :created, location: @target
    else
      render json: @target.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /targets/1
  # PATCH/PUT /targets/1.json
  def update
    if @target.update(target_params)
      render json: @target, status: :ok, location: @target
    else
      render json: @target.errors, status: :unprocessable_entity
    end
  end

  # DELETE /targets/1
  # DELETE /targets/1.json
  def destroy
    @target.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_target
      @target = Target.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def target_params
      params.require(:target).permit(:start_date, :end_date, :weight, :fat_percentage, :body_age, :bmi, :rm, :visc_fat, :sc_fat, :muscle_percentage, :fat_kg, :muscle_kg, :other_kg, :fat_loss, :muscle_gain, :user_id)
    end
end
