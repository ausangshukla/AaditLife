class GoalsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource param_method: :goal_params, except: [:create]


  # GET /goals
  # GET /goals.json
  def index
    render json: @goals
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
    render json: @goal
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      render json: @goal, status: :created, location: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    if @goal.update(goal_params)
      render json: @goal, status: :ok, location: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:user_id, :goal_name, :goal_desc)
    end
end
