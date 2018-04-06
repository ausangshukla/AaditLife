require 'test_helper'

class FitnessTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fitness_test = fitness_tests(:one)
  end

  test "should get index" do
    get fitness_tests_url, as: :json
    assert_response :success
  end

  test "should create fitness_test" do
    assert_difference('FitnessTest.count') do
      post fitness_tests_url, params: { fitness_test: { bmi: @fitness_test.bmi, body_age: @fitness_test.body_age, coach_id: @fitness_test.coach_id, duration: @fitness_test.duration, fat_kg: @fitness_test.fat_kg, fat_loss: @fitness_test.fat_loss, fat_percentage: @fitness_test.fat_percentage, max_heart_rate: @fitness_test.max_heart_rate, max_speed: @fitness_test.max_speed, muscle_gain: @fitness_test.muscle_gain, muscle_kg: @fitness_test.muscle_kg, muscle_percentage: @fitness_test.muscle_percentage, other_kg: @fitness_test.other_kg, reason_for_stopping: @fitness_test.reason_for_stopping, rm: @fitness_test.rm, sc_fat: @fitness_test.sc_fat, test_date: @fitness_test.test_date, test_details: @fitness_test.test_details, user_id: @fitness_test.user_id, visc_fat: @fitness_test.visc_fat, weight: @fitness_test.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show fitness_test" do
    get fitness_test_url(@fitness_test), as: :json
    assert_response :success
  end

  test "should update fitness_test" do
    patch fitness_test_url(@fitness_test), params: { fitness_test: { bmi: @fitness_test.bmi, body_age: @fitness_test.body_age, coach_id: @fitness_test.coach_id, duration: @fitness_test.duration, fat_kg: @fitness_test.fat_kg, fat_loss: @fitness_test.fat_loss, fat_percentage: @fitness_test.fat_percentage, max_heart_rate: @fitness_test.max_heart_rate, max_speed: @fitness_test.max_speed, muscle_gain: @fitness_test.muscle_gain, muscle_kg: @fitness_test.muscle_kg, muscle_percentage: @fitness_test.muscle_percentage, other_kg: @fitness_test.other_kg, reason_for_stopping: @fitness_test.reason_for_stopping, rm: @fitness_test.rm, sc_fat: @fitness_test.sc_fat, test_date: @fitness_test.test_date, test_details: @fitness_test.test_details, user_id: @fitness_test.user_id, visc_fat: @fitness_test.visc_fat, weight: @fitness_test.weight } }, as: :json
    assert_response 200
  end

  test "should destroy fitness_test" do
    assert_difference('FitnessTest.count', -1) do
      delete fitness_test_url(@fitness_test), as: :json
    end

    assert_response 204
  end
end
