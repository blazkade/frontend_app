require 'test_helper'

class AddeshopsControllerTest < ActionController::TestCase
  setup do
    @addeshop = addeshops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addeshops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addeshop" do
    assert_difference('Addeshop.count') do
      post :create, addeshop: { eshopAddress: @addeshop.eshopAddress }
    end

    assert_redirected_to addeshop_path(assigns(:addeshop))
  end

  test "should show addeshop" do
    get :show, id: @addeshop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addeshop
    assert_response :success
  end

  test "should update addeshop" do
    patch :update, id: @addeshop, addeshop: { eshopAddress: @addeshop.eshopAddress }
    assert_redirected_to addeshop_path(assigns(:addeshop))
  end

  test "should destroy addeshop" do
    assert_difference('Addeshop.count', -1) do
      delete :destroy, id: @addeshop
    end

    assert_redirected_to addeshops_path
  end
end
