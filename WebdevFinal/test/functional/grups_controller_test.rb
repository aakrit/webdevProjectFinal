require 'test_helper'

class GrupsControllerTest < ActionController::TestCase
  setup do
    @grup = grups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grup" do
    assert_difference('Grup.count') do
      post :create, grup: { description: @grup.description, groupname: @grup.groupname, grouptype: @grup.grouptype }
    end

    assert_redirected_to grup_path(assigns(:grup))
  end

  test "should show grup" do
    get :show, id: @grup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grup
    assert_response :success
  end

  test "should update grup" do
    put :update, id: @grup, grup: { description: @grup.description, groupname: @grup.groupname, grouptype: @grup.grouptype }
    assert_redirected_to grup_path(assigns(:grup))
  end

  test "should destroy grup" do
    assert_difference('Grup.count', -1) do
      delete :destroy, id: @grup
    end

    assert_redirected_to grups_path
  end
end
