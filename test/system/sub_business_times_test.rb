require "application_system_test_case"

class SubBusinessTimesTest < ApplicationSystemTestCase
  setup do
    @sub_business_time = sub_business_times(:one)
  end

  test "visiting the index" do
    visit sub_business_times_url
    assert_selector "h1", text: "Sub Business Times"
  end

  test "creating a Sub business time" do
    visit sub_business_times_url
    click_on "New Sub Business Time"

    fill_in "End time sub", with: @sub_business_time.end_time_sub
    fill_in "Start time sub", with: @sub_business_time.start_time_sub
    fill_in "Sub business", with: @sub_business_time.sub_business_id
    fill_in "Timecard", with: @sub_business_time.timecard_id
    fill_in "User", with: @sub_business_time.user_id
    click_on "Create Sub business time"

    assert_text "Sub business time was successfully created"
    click_on "Back"
  end

  test "updating a Sub business time" do
    visit sub_business_times_url
    click_on "Edit", match: :first

    fill_in "End time sub", with: @sub_business_time.end_time_sub
    fill_in "Start time sub", with: @sub_business_time.start_time_sub
    fill_in "Sub business", with: @sub_business_time.sub_business_id
    fill_in "Timecard", with: @sub_business_time.timecard_id
    fill_in "User", with: @sub_business_time.user_id
    click_on "Update Sub business time"

    assert_text "Sub business time was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub business time" do
    visit sub_business_times_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub business time was successfully destroyed"
  end
end
