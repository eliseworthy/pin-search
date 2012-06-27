require 'test_helper'

class PinItemsControllerTest < ActionController::TestCase
  setup do
    @pin_item = pin_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pin_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pin_item" do
    assert_difference('PinItem.count') do
      post :create, pin_item: {  }
    end

    assert_response 201
  end

  test "should show pin_item" do
    get :show, id: @pin_item
    assert_response :success
  end

  test "should update pin_item" do
    put :update, id: @pin_item, pin_item: {  }
    assert_response 204
  end

  test "should destroy pin_item" do
    assert_difference('PinItem.count', -1) do
      delete :destroy, id: @pin_item
    end

    assert_response 204
  end
end
