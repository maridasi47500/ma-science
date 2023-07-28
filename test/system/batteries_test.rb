require "application_system_test_case"

class BatteriesTest < ApplicationSystemTestCase
  setup do
    @battery = batteries(:one)
  end

  test "visiting the index" do
    visit batteries_url
    assert_selector "h1", text: "Batteries"
  end

  test "should create battery" do
    visit batteries_url
    click_on "New battery"

    fill_in "Image", with: @battery.image
    fill_in "Name", with: @battery.name
    click_on "Create Battery"

    assert_text "Battery was successfully created"
    click_on "Back"
  end

  test "should update Battery" do
    visit battery_url(@battery)
    click_on "Edit this battery", match: :first

    fill_in "Image", with: @battery.image
    fill_in "Name", with: @battery.name
    click_on "Update Battery"

    assert_text "Battery was successfully updated"
    click_on "Back"
  end

  test "should destroy Battery" do
    visit battery_url(@battery)
    click_on "Destroy this battery", match: :first

    assert_text "Battery was successfully destroyed"
  end
end
