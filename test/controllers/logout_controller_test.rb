require "test_helper"

class LogoutControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get logout_destroy_url
    assert_response :success
  end
end
