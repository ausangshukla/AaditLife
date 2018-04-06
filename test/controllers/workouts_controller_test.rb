require 'test_helper'

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout = workouts(:one)
  end

  test "should get index" do
    get workouts_url, as: :json
    assert_response :success
  end

  test "should create workout" do
    assert_difference('Workout.count') do
      post workouts_url, params: { workout: { activity_speed: @workout.activity_speed, activity_time: @workout.activity_time, current: @workout.current, recover_time: @workout.recover_time, repeats: @workout.repeats, total_duration: @workout.total_duration, user_id: @workout.user_id, workout_type: @workout.workout_type } }, as: :json
    end

    assert_response 201
  end

  test "should show workout" do
    get workout_url(@workout), as: :json
    assert_response :success
  end

  test "should update workout" do
    patch workout_url(@workout), params: { workout: { activity_speed: @workout.activity_speed, activity_time: @workout.activity_time, current: @workout.current, recover_time: @workout.recover_time, repeats: @workout.repeats, total_duration: @workout.total_duration, user_id: @workout.user_id, workout_type: @workout.workout_type } }, as: :json
    assert_response 200
  end

  test "should destroy workout" do
    assert_difference('Workout.count', -1) do
      delete workout_url(@workout), as: :json
    end

    assert_response 204
  end
end
