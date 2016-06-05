require 'test_helper'

class EntryControllerTest < ActionController::TestCase
  test "should get entry_type:string" do
    get :entry_type:string
    assert_response :success
  end

  test "should get chq_no:string" do
    get :chq_no:string
    assert_response :success
  end

  test "should get receipt_no:string" do
    get :receipt_no:string
    assert_response :success
  end

  test "should get value:float" do
    get :value:float
    assert_response :success
  end

  test "should get is_debit:boolean" do
    get :is_debit:boolean
    assert_response :success
  end

  test "should get title:string" do
    get :title:string
    assert_response :success
  end

  test "should get details:text" do
    get :details:text
    assert_response :success
  end

end
