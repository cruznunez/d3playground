require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get level_1" do
    get pages_level_1_url
    assert_response :success
  end

end
