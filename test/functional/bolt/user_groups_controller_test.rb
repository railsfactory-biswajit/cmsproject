require 'test_helper'

class Bolt::UserGroupsControllerTest < ActionController::TestCase
  setup do
    @bolt_user_group = bolt_user_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bolt_user_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bolt_user_group" do
    assert_difference('Bolt::UserGroup.count') do
      post :create, bolt_user_group: @bolt_user_group.attributes
    end

    assert_redirected_to bolt_user_group_path(assigns(:bolt_user_group))
  end

  test "should show bolt_user_group" do
    get :show, id: @bolt_user_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bolt_user_group.to_param
    assert_response :success
  end

  test "should update bolt_user_group" do
    put :update, id: @bolt_user_group.to_param, bolt_user_group: @bolt_user_group.attributes
    assert_redirected_to bolt_user_group_path(assigns(:bolt_user_group))
  end

  test "should destroy bolt_user_group" do
    assert_difference('Bolt::UserGroup.count', -1) do
      delete :destroy, id: @bolt_user_group.to_param
    end

    assert_redirected_to bolt_user_groups_path
  end
end
