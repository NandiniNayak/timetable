require 'test_helper'

class AlertControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get alert_page_url
    assert_response :success
  end

end
