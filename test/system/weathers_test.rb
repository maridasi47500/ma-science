require "application_system_test_case"

class WeathersTest < ApplicationSystemTestCase
  setup do
    @weather = weathers(:one)
  end

  test "visiting the index" do
    visit weathers_url
    assert_selector "h1", text: "Weathers"
  end

  test "should create weather" do
    visit weathers_url
    click_on "New weather"

    fill_in "Image", with: @weather.image
    fill_in "Name", with: @weather.name
    click_on "Create Weather"

    assert_text "Weather was successfully created"
    click_on "Back"
  end

  test "should update Weather" do
    visit weather_url(@weather)
    click_on "Edit this weather", match: :first

    fill_in "Image", with: @weather.image
    fill_in "Name", with: @weather.name
    click_on "Update Weather"

    assert_text "Weather was successfully updated"
    click_on "Back"
  end

  test "should destroy Weather" do
    visit weather_url(@weather)
    click_on "Destroy this weather", match: :first

    assert_text "Weather was successfully destroyed"
  end
end
