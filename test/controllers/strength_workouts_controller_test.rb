require 'test_helper'

class StrengthWorkoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @strength_workout = strength_workouts(:one)
  end

  test "should get index" do
    get strength_workouts_url
    assert_response :success
  end

  test "should get new" do
    get new_strength_workout_url
    assert_response :success
  end

  test "should create strength_workout" do
    assert_difference('StrengthWorkout.count') do
      post strength_workouts_url, params: { strength_workout: { balance: @strength_workout.balance, crunches: @strength_workout.crunches, current: @strength_workout.current, is_target: @strength_workout.is_target, leg_raise_both: @strength_workout.leg_raise_both, one_leg_raise: @strength_workout.one_leg_raise, plank: @strength_workout.plank, pushups: @strength_workout.pushups, squats: @strength_workout.squats, superman: @strength_workout.superman, user_id: @strength_workout.user_id } }
    end

    assert_redirected_to strength_workout_url(StrengthWorkout.last)
  end

  test "should show strength_workout" do
    get strength_workout_url(@strength_workout)
    assert_response :success
  end

  test "should get edit" do
    get edit_strength_workout_url(@strength_workout)
    assert_response :success
  end

  test "should update strength_workout" do
    patch strength_workout_url(@strength_workout), params: { strength_workout: { balance: @strength_workout.balance, crunches: @strength_workout.crunches, current: @strength_workout.current, is_target: @strength_workout.is_target, leg_raise_both: @strength_workout.leg_raise_both, one_leg_raise: @strength_workout.one_leg_raise, plank: @strength_workout.plank, pushups: @strength_workout.pushups, squats: @strength_workout.squats, superman: @strength_workout.superman, user_id: @strength_workout.user_id } }
    assert_redirected_to strength_workout_url(@strength_workout)
  end

  test "should destroy strength_workout" do
    assert_difference('StrengthWorkout.count', -1) do
      delete strength_workout_url(@strength_workout)
    end

    assert_redirected_to strength_workouts_url
  end
end
