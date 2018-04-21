require 'test_helper'

class FoodLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_log = food_logs(:one)
  end

  test "should get index" do
    get food_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_food_log_url
    assert_response :success
  end

  test "should create food_log" do
    assert_difference('FoodLog.count') do
      post food_logs_url, params: { food_log: { details: @food_log.details, intake_date: @food_log.intake_date, meal: @food_log.meal, user_id: @food_log.user_id } }
    end

    assert_redirected_to food_log_url(FoodLog.last)
  end

  test "should show food_log" do
    get food_log_url(@food_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_log_url(@food_log)
    assert_response :success
  end

  test "should update food_log" do
    patch food_log_url(@food_log), params: { food_log: { details: @food_log.details, intake_date: @food_log.intake_date, meal: @food_log.meal, user_id: @food_log.user_id } }
    assert_redirected_to food_log_url(@food_log)
  end

  test "should destroy food_log" do
    assert_difference('FoodLog.count', -1) do
      delete food_log_url(@food_log)
    end

    assert_redirected_to food_logs_url
  end
end
