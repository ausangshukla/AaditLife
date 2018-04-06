require 'test_helper'

class TargetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @target = targets(:one)
  end

  test "should get index" do
    get targets_url, as: :json
    assert_response :success
  end

  test "should create target" do
    assert_difference('Target.count') do
      post targets_url, params: { target: { bmi: @target.bmi, body_age: @target.body_age, end_date: @target.end_date, fat_kg: @target.fat_kg, fat_loss: @target.fat_loss, fat_percentage: @target.fat_percentage, muscle_gain: @target.muscle_gain, muscle_kg: @target.muscle_kg, muscle_percentage: @target.muscle_percentage, other_kg: @target.other_kg, rm: @target.rm, sc_fat: @target.sc_fat, start_date: @target.start_date, user_id: @target.user_id, visc_fat: @target.visc_fat, weight: @target.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show target" do
    get target_url(@target), as: :json
    assert_response :success
  end

  test "should update target" do
    patch target_url(@target), params: { target: { bmi: @target.bmi, body_age: @target.body_age, end_date: @target.end_date, fat_kg: @target.fat_kg, fat_loss: @target.fat_loss, fat_percentage: @target.fat_percentage, muscle_gain: @target.muscle_gain, muscle_kg: @target.muscle_kg, muscle_percentage: @target.muscle_percentage, other_kg: @target.other_kg, rm: @target.rm, sc_fat: @target.sc_fat, start_date: @target.start_date, user_id: @target.user_id, visc_fat: @target.visc_fat, weight: @target.weight } }, as: :json
    assert_response 200
  end

  test "should destroy target" do
    assert_difference('Target.count', -1) do
      delete target_url(@target), as: :json
    end

    assert_response 204
  end
end
