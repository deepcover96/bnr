require 'test_helper'

class MonthlySpecialControllerTest < ActionController::TestCase
  test "should get featured" do
    get :featured
    assert_response :success
  end

end
