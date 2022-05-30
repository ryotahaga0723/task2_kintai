require 'test_helper'

class MainBusinessTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_business_time = main_business_times(:one)
  end

  test "should get index" do
    get main_business_times_url
    assert_response :success
  end

  test "should get new" do
    get new_main_business_time_url
    assert_response :success
  end

  test "should create main_business_time" do
    assert_difference('MainBusinessTime.count') do
      post main_business_times_url, params: { main_business_time: { : @main_business_time., start_time_main: @main_business_time.start_time_main, sub_businessnd_time_main: @main_business_time.sub_businessnd_time_main, timecard_id: @main_business_time.timecard_id, user_id: @main_business_time.user_id } }
    end

    assert_redirected_to main_business_time_url(MainBusinessTime.last)
  end

  test "should show main_business_time" do
    get main_business_time_url(@main_business_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_business_time_url(@main_business_time)
    assert_response :success
  end

  test "should update main_business_time" do
    patch main_business_time_url(@main_business_time), params: { main_business_time: { : @main_business_time., start_time_main: @main_business_time.start_time_main, sub_businessnd_time_main: @main_business_time.sub_businessnd_time_main, timecard_id: @main_business_time.timecard_id, user_id: @main_business_time.user_id } }
    assert_redirected_to main_business_time_url(@main_business_time)
  end

  test "should destroy main_business_time" do
    assert_difference('MainBusinessTime.count', -1) do
      delete main_business_time_url(@main_business_time)
    end

    assert_redirected_to main_business_times_url
  end
end
