require 'test_helper'

class ProfileAccountsControllerTest < ActionController::TestCase
  setup do
    @profile_account = profile_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_account" do
    assert_difference('ProfileAccount.count') do
      post :create, profile_account: { description: @profile_account.description, name: @profile_account.name }
    end

    assert_redirected_to profile_account_path(assigns(:profile_account))
  end

  test "should show profile_account" do
    get :show, id: @profile_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_account
    assert_response :success
  end

  test "should update profile_account" do
    put :update, id: @profile_account, profile_account: { description: @profile_account.description, name: @profile_account.name }
    assert_redirected_to profile_account_path(assigns(:profile_account))
  end

  test "should destroy profile_account" do
    assert_difference('ProfileAccount.count', -1) do
      delete :destroy, id: @profile_account
    end

    assert_redirected_to profile_accounts_path
  end
end
