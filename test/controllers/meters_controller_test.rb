require 'test_helper'

class MetersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get meters_show_url
    assert_response :success
  end

  test "should get create" do
    get meters_create_url
    assert_response :success
  end

  test "should get edit" do
    get meters_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get meters_destroy_url
    assert_response :success
  end

end
