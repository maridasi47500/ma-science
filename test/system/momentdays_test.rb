require "application_system_test_case"

class MomentdaysTest < ApplicationSystemTestCase
  setup do
    @momentday = momentdays(:one)
  end

  test "visiting the index" do
    visit momentdays_url
    assert_selector "h1", text: "Momentdays"
  end

  test "should create momentday" do
    visit momentdays_url
    click_on "New momentday"

    fill_in "Image", with: @momentday.image
    fill_in "Name", with: @momentday.name
    click_on "Create Momentday"

    assert_text "Momentday was successfully created"
    click_on "Back"
  end

  test "should update Momentday" do
    visit momentday_url(@momentday)
    click_on "Edit this momentday", match: :first

    fill_in "Image", with: @momentday.image
    fill_in "Name", with: @momentday.name
    click_on "Update Momentday"

    assert_text "Momentday was successfully updated"
    click_on "Back"
  end

  test "should destroy Momentday" do
    visit momentday_url(@momentday)
    click_on "Destroy this momentday", match: :first

    assert_text "Momentday was successfully destroyed"
  end
end
