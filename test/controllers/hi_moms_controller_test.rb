require 'test_helper'

class HiMomsControllerTest < ActionController::TestCase
  setup do
    @hi_mom = hi_moms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hi_moms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hi_mom" do
    assert_difference('HiMom.count') do
      post :create, hi_mom: {  }
    end

    assert_redirected_to hi_mom_path(assigns(:hi_mom))
  end

  test "should show hi_mom" do
    get :show, id: @hi_mom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hi_mom
    assert_response :success
  end

  test "should update hi_mom" do
    patch :update, id: @hi_mom, hi_mom: {  }
    assert_redirected_to hi_mom_path(assigns(:hi_mom))
  end

  test "should destroy hi_mom" do
    assert_difference('HiMom.count', -1) do
      delete :destroy, id: @hi_mom
    end

    assert_redirected_to hi_moms_path
  end
end
