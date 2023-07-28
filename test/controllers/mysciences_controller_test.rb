require "test_helper"

class MysciencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myscience = mysciences(:one)
  end

  test "should get index" do
    get mysciences_url
    assert_response :success
  end

  test "should get new" do
    get new_myscience_url
    assert_response :success
  end

  test "should create myscience" do
    assert_difference("Myscience.count") do
      post mysciences_url, params: { myscience: { title: @myscience.title } }
    end

    assert_redirected_to myscience_url(Myscience.last)
  end

  test "should show myscience" do
    get myscience_url(@myscience)
    assert_response :success
  end

  test "should get edit" do
    get edit_myscience_url(@myscience)
    assert_response :success
  end

  test "should update myscience" do
    patch myscience_url(@myscience), params: { myscience: { title: @myscience.title } }
    assert_redirected_to myscience_url(@myscience)
  end

  test "should destroy myscience" do
    assert_difference("Myscience.count", -1) do
      delete myscience_url(@myscience)
    end

    assert_redirected_to mysciences_url
  end
end
