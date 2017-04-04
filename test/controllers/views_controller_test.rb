require 'test_helper'

class ViewsControllerTest < ActionController::TestCase
  test "should get firstView" do
    get :firstView
    assert_response :success
  end

end
