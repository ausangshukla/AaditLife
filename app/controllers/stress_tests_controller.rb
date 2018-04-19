class StressTestsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource param_method: :stress_test_params, except: [:create]


  respond_to :json

  def index
    respond_with(@stress_tests)
  end

  def show
    respond_with(@stress_test)
  end

  def new
    @stress_test = StressTest.new
    respond_with(@stress_test)
  end

  def edit
  end

  def create
    @stress_test = StressTest.new(stress_test_params)
    @stress_test.user_id = current_user.id
    @stress_test.save
    respond_with(@stress_test)
  end

  def update
    @stress_test.update(stress_test_params)
    respond_with(@stress_test)
  end

  def destroy
    @stress_test.destroy
    respond_with(@stress_test)
  end

  private
    def set_stress_test
      @stress_test = StressTest.find(params[:id])
    end

    def stress_test_params
      params.require(:stress_test).permit(:unexpected_upset, :unable_to_control, :nervous, 
        :confident, :things_going_right, :cannot_cope, :control_irritation, 
        :top_of_things, :anger, :difficulties_piling, :user_id, :test_date, :score, :score_interpretation)
    end
end
