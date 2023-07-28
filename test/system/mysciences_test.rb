require "application_system_test_case"

class MysciencesTest < ApplicationSystemTestCase
  setup do
    @myscience = mysciences(:one)
  end

  test "visiting the index" do
    visit mysciences_url
    assert_selector "h1", text: "Mysciences"
  end

  test "should create myscience" do
    visit mysciences_url
    click_on "New myscience"

    fill_in "Title", with: @myscience.title
    click_on "Create Myscience"

    assert_text "Myscience was successfully created"
    click_on "Back"
  end

  test "should update Myscience" do
    visit myscience_url(@myscience)
    click_on "Edit this myscience", match: :first

    fill_in "Title", with: @myscience.title
    click_on "Update Myscience"

    assert_text "Myscience was successfully updated"
    click_on "Back"
  end

  test "should destroy Myscience" do
    visit myscience_url(@myscience)
    click_on "Destroy this myscience", match: :first

    assert_text "Myscience was successfully destroyed"
  end
end
