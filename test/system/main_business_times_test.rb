require "application_system_test_case"

class MainBusinessTimesTest < ApplicationSystemTestCase
  setup do
    @main_business_time = main_business_times(:one)
  end

  test "visiting the index" do
    visit main_business_times_url
    assert_selector "h1", text: "Main Business Times"
  end

  test "creating a Main business time" do
    visit main_business_times_url
    click_on "New Main Business Time"

    fill_in "", with: @main_business_time.
    fill_in "Start time main", with: @main_business_time.start_time_main
    fill_in "Sub businessnd time main", with: @main_business_time.sub_businessnd_time_main
    fill_in "Timecard", with: @main_business_time.timecard_id
    fill_in "User", with: @main_business_time.user_id
    click_on "Create Main business time"

    assert_text "Main business time was successfully created"
    click_on "Back"
  end

  test "updating a Main business time" do
    visit main_business_times_url
    click_on "Edit", match: :first

    fill_in "", with: @main_business_time.
    fill_in "Start time main", with: @main_business_time.start_time_main
    fill_in "Sub businessnd time main", with: @main_business_time.sub_businessnd_time_main
    fill_in "Timecard", with: @main_business_time.timecard_id
    fill_in "User", with: @main_business_time.user_id
    click_on "Update Main business time"

    assert_text "Main business time was successfully updated"
    click_on "Back"
  end

  test "destroying a Main business time" do
    visit main_business_times_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main business time was successfully destroyed"
  end
end
