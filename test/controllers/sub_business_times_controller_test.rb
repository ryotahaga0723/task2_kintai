require 'test_helper'

class SubBusinessTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_business_time = sub_business_times(:one)
  end

  test "should get index" do
    get sub_business_times_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_business_time_url
    assert_response :success
  end

  test "should create sub_business_time" do
    assert_difference('SubBusinessTime.count') do
      post sub_business_times_url, params: { sub_business_time: { end_time_sub: @sub_business_time.end_time_sub, start_time_sub: @sub_business_time.start_time_sub, sub_business_id: @sub_business_time.sub_business_id, timecard_id: @sub_business_time.timecard_id, user_id: @sub_business_time.user_id } }
    end

    assert_redirected_to sub_business_time_url(SubBusinessTime.last)
  end

  test "should show sub_business_time" do
    get sub_business_time_url(@sub_business_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_business_time_url(@sub_business_time)
    assert_response :success
  end

  test "should update sub_business_time" do
    patch sub_business_time_url(@sub_business_time), params: { sub_business_time: { end_time_sub: @sub_business_time.end_time_sub, start_time_sub: @sub_business_time.start_time_sub, sub_business_id: @sub_business_time.sub_business_id, timecard_id: @sub_business_time.timecard_id, user_id: @sub_business_time.user_id } }
    assert_redirected_to sub_business_time_url(@sub_business_time)
  end

  test "should destroy sub_business_time" do
    assert_difference('SubBusinessTime.count', -1) do
      delete sub_business_time_url(@sub_business_time)
    end

    assert_redirected_to sub_business_times_url
  end
end
