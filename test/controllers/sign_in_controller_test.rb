require 'test_helper'

class SignInControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sign_in_new_url
    assert_response :success
  end

  test "should get show" do
    get sign_in_show_url
    assert_response :success
  end

end
