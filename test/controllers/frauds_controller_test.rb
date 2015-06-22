require 'test_helper'

class FraudsControllerTest < ActionController::TestCase
  setup do
    @fraud = frauds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frauds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fraud" do
    assert_difference('Fraud.count') do
      post :create, fraud: { name: @fraud.name }
    end

    assert_redirected_to fraud_path(assigns(:fraud))
  end

  test "should show fraud" do
    get :show, id: @fraud
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fraud
    assert_response :success
  end

  test "should update fraud" do
    patch :update, id: @fraud, fraud: { name: @fraud.name }
    assert_redirected_to fraud_path(assigns(:fraud))
  end

  test "should destroy fraud" do
    assert_difference('Fraud.count', -1) do
      delete :destroy, id: @fraud
    end

    assert_redirected_to frauds_path
  end
end
