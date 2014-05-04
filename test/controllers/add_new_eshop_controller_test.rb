require 'test_helper'

class AddNewEshopControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
