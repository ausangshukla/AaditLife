require 'test_helper'

class CardioProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cardio_profile = cardio_profiles(:one)
  end

  test "should get index" do
    get cardio_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_cardio_profile_url
    assert_response :success
  end

  test "should create cardio_profile" do
    assert_difference('CardioProfile.count') do
      post cardio_profiles_url, params: { cardio_profile: { bpm: @cardio_profile.bpm, fitness_test_id: @cardio_profile.fitness_test_id, on_date: @cardio_profile.on_date, speed: @cardio_profile.speed, user_id: @cardio_profile.user_id } }
    end

    assert_redirected_to cardio_profile_url(CardioProfile.last)
  end

  test "should show cardio_profile" do
    get cardio_profile_url(@cardio_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_cardio_profile_url(@cardio_profile)
    assert_response :success
  end

  test "should update cardio_profile" do
    patch cardio_profile_url(@cardio_profile), params: { cardio_profile: { bpm: @cardio_profile.bpm, fitness_test_id: @cardio_profile.fitness_test_id, on_date: @cardio_profile.on_date, speed: @cardio_profile.speed, user_id: @cardio_profile.user_id } }
    assert_redirected_to cardio_profile_url(@cardio_profile)
  end

  test "should destroy cardio_profile" do
    assert_difference('CardioProfile.count', -1) do
      delete cardio_profile_url(@cardio_profile)
    end

    assert_redirected_to cardio_profiles_url
  end
end
