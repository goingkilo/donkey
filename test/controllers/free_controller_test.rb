require 'test_helper'

class FreeControllerTest < ActionController::TestCase
  test "should get Content" do
    get :Content
    assert_response :success
  end

end
