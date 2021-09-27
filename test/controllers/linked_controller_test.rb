require "test_helper"

class LinkedControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get linked_show_url
    assert_response :success
  end
end
