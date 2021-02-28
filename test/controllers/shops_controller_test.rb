require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get shops_create_url
    assert_response :success
  end

end
