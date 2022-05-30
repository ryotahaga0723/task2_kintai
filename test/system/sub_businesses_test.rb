require "application_system_test_case"

class SubBusinessesTest < ApplicationSystemTestCase
  setup do
    @sub_business = sub_businesses(:one)
  end

  test "visiting the index" do
    visit sub_businesses_url
    assert_selector "h1", text: "Sub Businesses"
  end

  test "creating a Sub business" do
    visit sub_businesses_url
    click_on "New Sub Business"

    fill_in "Status", with: @sub_business.status
    fill_in "Sub business company", with: @sub_business.sub_business_company
    fill_in "Sub business content", with: @sub_business.sub_business_content
    fill_in "User", with: @sub_business.user_id
    click_on "Create Sub business"

    assert_text "Sub business was successfully created"
    click_on "Back"
  end

  test "updating a Sub business" do
    visit sub_businesses_url
    click_on "Edit", match: :first

    fill_in "Status", with: @sub_business.status
    fill_in "Sub business company", with: @sub_business.sub_business_company
    fill_in "Sub business content", with: @sub_business.sub_business_content
    fill_in "User", with: @sub_business.user_id
    click_on "Update Sub business"

    assert_text "Sub business was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub business" do
    visit sub_businesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub business was successfully destroyed"
  end
end
