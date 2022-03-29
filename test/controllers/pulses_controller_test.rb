require "test_helper"

class PulsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pulses_index_url
    assert_response :success
  end

  test "should get new" do
    get pulses_new_url
    assert_response :success
  end

  test "should get create" do
    get pulses_create_url
    assert_response :success
  end

  test "should get destroy" do
    get pulses_destroy_url
    assert_response :success
  end
end
