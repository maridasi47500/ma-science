require "test_helper"

class MomentdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @momentday = momentdays(:one)
  end

  test "should get index" do
    get momentdays_url
    assert_response :success
  end

  test "should get new" do
    get new_momentday_url
    assert_response :success
  end

  test "should create momentday" do
    assert_difference("Momentday.count") do
      post momentdays_url, params: { momentday: { image: @momentday.image, name: @momentday.name } }
    end

    assert_redirected_to momentday_url(Momentday.last)
  end

  test "should show momentday" do
    get momentday_url(@momentday)
    assert_response :success
  end

  test "should get edit" do
    get edit_momentday_url(@momentday)
    assert_response :success
  end

  test "should update momentday" do
    patch momentday_url(@momentday), params: { momentday: { image: @momentday.image, name: @momentday.name } }
    assert_redirected_to momentday_url(@momentday)
  end

  test "should destroy momentday" do
    assert_difference("Momentday.count", -1) do
      delete momentday_url(@momentday)
    end

    assert_redirected_to momentdays_url
  end
end
