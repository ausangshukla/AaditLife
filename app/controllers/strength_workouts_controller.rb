class StrengthWorkoutsController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource param_method: :strength_workout_params, except: [:create]

  respond_to :json

  def index
    respond_with(@strength_workouts)
  end

  def show
    respond_with(@strength_workout)
  end

  def new
    @strength_workout = StrengthWorkout.new
    respond_with(@strength_workout)
  end

  def edit
  end

  def create
    @strength_workout = StrengthWorkout.new(strength_workout_params)
    @strength_workout.save
    respond_with(@strength_workout)
  end

  def update
    @strength_workout.update(strength_workout_params)
    respond_with(@strength_workout)
  end

  def destroy
    @strength_workout.destroy
    respond_with(@strength_workout)
  end

  private
    def set_strength_workout
      @strength_workout = StrengthWorkout.find(params[:id])
    end

    def strength_workout_params
      params.require(:strength_workout).permit(:balance, :plank, :pushups, :one_leg_raise, :leg_raise_both, :squats, :crunches, :superman, :is_target, :current, :user_id)
    end
end
