require 'test_helper'

class MardisControllerTest < ActionController::TestCase
  setup do
    @mardi = mardis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mardis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mardi" do
    assert_difference('Mardi.count') do
      post :create, mardi: {  }
    end

    assert_redirected_to mardi_path(assigns(:mardi))
  end

  test "should show mardi" do
    get :show, id: @mardi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mardi
    assert_response :success
  end

  test "should update mardi" do
    patch :update, id: @mardi, mardi: {  }
    assert_redirected_to mardi_path(assigns(:mardi))
  end

  test "should destroy mardi" do
    assert_difference('Mardi.count', -1) do
      delete :destroy, id: @mardi
    end

    assert_redirected_to mardis_path
  end
end
