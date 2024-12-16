require "test_helper"

class RolesControllerTest < ActionDispatch::IntegrationTest
  test "should get nominate_admin" do
    get roles_nominate_admin_url
    assert_response :success
  end

  test "should get remove_admin" do
    get roles_remove_admin_url
    assert_response :success
  end
end
