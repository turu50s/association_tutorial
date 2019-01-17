require 'test_helper'

class UseresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get useres_index_url
    assert_response :success
  end

  test "should get show" do
    get useres_show_url
    assert_response :success
  end

end
