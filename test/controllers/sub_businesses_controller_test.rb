require 'test_helper'

class SubBusinessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_business = sub_businesses(:one)
  end

  test "should get index" do
    get sub_businesses_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_business_url
    assert_response :success
  end

  test "should create sub_business" do
    assert_difference('SubBusiness.count') do
      post sub_businesses_url, params: { sub_business: { status: @sub_business.status, sub_business_company: @sub_business.sub_business_company, sub_business_content: @sub_business.sub_business_content, user_id: @sub_business.user_id } }
    end

    assert_redirected_to sub_business_url(SubBusiness.last)
  end

  test "should show sub_business" do
    get sub_business_url(@sub_business)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_business_url(@sub_business)
    assert_response :success
  end

  test "should update sub_business" do
    patch sub_business_url(@sub_business), params: { sub_business: { status: @sub_business.status, sub_business_company: @sub_business.sub_business_company, sub_business_content: @sub_business.sub_business_content, user_id: @sub_business.user_id } }
    assert_redirected_to sub_business_url(@sub_business)
  end

  test "should destroy sub_business" do
    assert_difference('SubBusiness.count', -1) do
      delete sub_business_url(@sub_business)
    end

    assert_redirected_to sub_businesses_url
  end
end
