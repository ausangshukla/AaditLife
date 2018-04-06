require 'test_helper'

class UserStressTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_stress_test = user_stress_tests(:one)
  end

  test "should get index" do
    get user_stress_tests_url, as: :json
    assert_response :success
  end

  test "should create user_stress_test" do
    assert_difference('UserStressTest.count') do
      post user_stress_tests_url, params: { user_stress_test: { score: @user_stress_test.score, stress_test_id: @user_stress_test.stress_test_id, test_date: @user_stress_test.test_date, test_id: @user_stress_test.test_id, user_id: @user_stress_test.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_stress_test" do
    get user_stress_test_url(@user_stress_test), as: :json
    assert_response :success
  end

  test "should update user_stress_test" do
    patch user_stress_test_url(@user_stress_test), params: { user_stress_test: { score: @user_stress_test.score, stress_test_id: @user_stress_test.stress_test_id, test_date: @user_stress_test.test_date, test_id: @user_stress_test.test_id, user_id: @user_stress_test.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_stress_test" do
    assert_difference('UserStressTest.count', -1) do
      delete user_stress_test_url(@user_stress_test), as: :json
    end

    assert_response 204
  end
end
