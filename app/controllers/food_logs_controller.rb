class FoodLogsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource param_method: :food_log_params, except: [:create]


  respond_to :json

  def index
    week = params[:week].present? ? params[:week].to_i : 0
    from = Date.today.beginning_of_week + (week * 7).days
    @food_logs = @food_logs.where("intake_date >= ? and intake_date < ?", from, from + 7.days)
    respond_with(@food_logs)
  end

  def show
    respond_with(@food_log)
  end

  def new
    @food_log = FoodLog.new
    respond_with(@food_log)
  end

  def edit
  end

  def create
    @food_log = FoodLog.new(food_log_params)
    @food_log.user_id = current_user.id
    @food_log.save
    respond_with(@food_log)
  end

  def update
    @food_log.update(food_log_params)
    respond_with(@food_log)
  end

  def destroy
    @food_log.destroy
    respond_with(@food_log)
  end

  private
    def set_food_log
      @food_log = FoodLog.find(params[:id])
    end

    def food_log_params
      params.require(:food_log).permit(:user_id, :meal, :intake_date, :details)
    end
end
