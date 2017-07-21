require 'test_helper'

class TaoControllerTest < ActionController::TestCase
  test "should get Om" do
    get :Om
    assert_response :success
  end

end
