class FitnessTestsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource param_method: :fitness_test_params, except: [:create]


  # GET /fitness_tests
  # GET /fitness_tests.json
  def index
    render json: @fitness_tests
  end

  # GET /fitness_tests/1
  # GET /fitness_tests/1.json
  def show
    render json: @fitness_test
  end

  # POST /fitness_tests
  # POST /fitness_tests.json
  def create
    @fitness_test = FitnessTest.new(fitness_test_params)

    if @fitness_test.save
      render json: @fitness_test, status: :created, location: @fitness_test
    else
      render json: @fitness_test.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fitness_tests/1
  # PATCH/PUT /fitness_tests/1.json
  def update
    if @fitness_test.update(fitness_test_params)
      render json: @fitness_test
    else
      render json: @fitness_test.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fitness_tests/1
  # DELETE /fitness_tests/1.json
  def destroy
    @fitness_test.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitness_test
      @fitness_test = FitnessTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fitness_test_params
      params.require(:fitness_test).permit(:test_date, :weight, :height, :fat_percentage, :body_age, :bmi, :rm, :visc_fat, :sc_fat, :muscle_percentage, :fat_kg, :muscle_kg, :other_kg, :fat_loss, :muscle_gain, :max_speed, :duration, :reason_for_stopping, :test_details, :user_id, :coach_id, :max_heart_rate)
    end
end
