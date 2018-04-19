require 'test_helper'

class StressTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stress_test = stress_tests(:one)
  end

  test "should get index" do
    get stress_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_stress_test_url
    assert_response :success
  end

  test "should create stress_test" do
    assert_difference('StressTest.count') do
      post stress_tests_url, params: { stress_test: { anger: @stress_test.anger, cannot_cope: @stress_test.cannot_cope, confident: @stress_test.confident, control_irritation: @stress_test.control_irritation, difficulties_piling: @stress_test.difficulties_piling, nervous: @stress_test.nervous, score: @stress_test.score, score_interpretation: @stress_test.score_interpretation, test_date: @stress_test.test_date, things_going_right: @stress_test.things_going_right, top_of_things: @stress_test.top_of_things, unable_to_control: @stress_test.unable_to_control, unexpected_upset: @stress_test.unexpected_upset, user_id: @stress_test.user_id } }
    end

    assert_redirected_to stress_test_url(StressTest.last)
  end

  test "should show stress_test" do
    get stress_test_url(@stress_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_stress_test_url(@stress_test)
    assert_response :success
  end

  test "should update stress_test" do
    patch stress_test_url(@stress_test), params: { stress_test: { anger: @stress_test.anger, cannot_cope: @stress_test.cannot_cope, confident: @stress_test.confident, control_irritation: @stress_test.control_irritation, difficulties_piling: @stress_test.difficulties_piling, nervous: @stress_test.nervous, score: @stress_test.score, score_interpretation: @stress_test.score_interpretation, test_date: @stress_test.test_date, things_going_right: @stress_test.things_going_right, top_of_things: @stress_test.top_of_things, unable_to_control: @stress_test.unable_to_control, unexpected_upset: @stress_test.unexpected_upset, user_id: @stress_test.user_id } }
    assert_redirected_to stress_test_url(@stress_test)
  end

  test "should destroy stress_test" do
    assert_difference('StressTest.count', -1) do
      delete stress_test_url(@stress_test)
    end

    assert_redirected_to stress_tests_url
  end
end
