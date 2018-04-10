class UserStressTestsController < ApplicationController
  before_action :set_user_stress_test, only: [:show, :update, :destroy]

  # GET /user_stress_tests
  # GET /user_stress_tests.json
  def index
    @user_stress_tests = UserStressTest.all
    render json: @user_stress_tests
  end

  # GET /user_stress_tests/1
  # GET /user_stress_tests/1.json
  def show
    render json: @user_stress_test
  end

  # POST /user_stress_tests
  # POST /user_stress_tests.json
  def create
    @user_stress_test = UserStressTest.new(user_stress_test_params)

    if @user_stress_test.save
      render json: @user_stress_test, status: :created, location: @user_stress_test
    else
      render json: @user_stress_test.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_stress_tests/1
  # PATCH/PUT /user_stress_tests/1.json
  def update
    if @user_stress_test.update(user_stress_test_params)
      render json: @user_stress_test, status: :ok, location: @user_stress_test
    else
      render json: @user_stress_test.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_stress_tests/1
  # DELETE /user_stress_tests/1.json
  def destroy
    @user_stress_test.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_stress_test
      @user_stress_test = UserStressTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_stress_test_params
      params.require(:user_stress_test).permit(:test_id, :stress_test_id, :user_id, :test_date, :score)
    end
end
