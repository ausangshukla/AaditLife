class WorkoutsController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource param_method: :workout_params, except: [:create]


  # GET /workouts
  # GET /workouts.json
  def index
    if(params[:fitness_test_id].present?)
      @workouts = @workouts.where(fitness_test_id: params[:fitness_test_id])
    else
      @workouts = @workouts.where(current: true)
    end
    render json: @workouts
  end

  # GET /workouts/1
  # GET /workouts/1.json
  def show
    render json: @workout
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      render json: @workout, status: :created, location: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    if @workout.update(workout_params)
      render json: @workout, status: :ok, location: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_params
      params.require(:workout).permit(:user_id, :workout_type, :activity_time, :activity_speed, 
        :recovery_time, :repeats, :total_duration, :current, :fitness_test_id)
    end
end
