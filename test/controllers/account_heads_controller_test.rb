require 'test_helper'

class AccountHeadsControllerTest < ActionController::TestCase
  setup do
    @account_head = account_heads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_heads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_head" do
    assert_difference('AccountHead.count') do
      post :create, account_head: { desc: @account_head.desc, name: @account_head.name }
    end

    assert_redirected_to account_head_path(assigns(:account_head))
  end

  test "should show account_head" do
    get :show, id: @account_head
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_head
    assert_response :success
  end

  test "should update account_head" do
    patch :update, id: @account_head, account_head: { desc: @account_head.desc, name: @account_head.name }
    assert_redirected_to account_head_path(assigns(:account_head))
  end

  test "should destroy account_head" do
    assert_difference('AccountHead.count', -1) do
      delete :destroy, id: @account_head
    end

    assert_redirected_to account_heads_path
  end
end
