require 'test_helper'

class EnvelopesControllerTest < ActionController::TestCase
  setup do
    @envelope = envelopes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:envelopes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create envelope" do
    assert_difference('Envelope.count') do
      post :create, envelope: { budget: @envelope.budget, name: @envelope.name }
    end

    assert_redirected_to envelope_path(assigns(:envelope))
  end

  test "should show envelope" do
    get :show, id: @envelope
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @envelope
    assert_response :success
  end

  test "should update envelope" do
    put :update, id: @envelope, envelope: { budget: @envelope.budget, name: @envelope.name }
    assert_redirected_to envelope_path(assigns(:envelope))
  end

  test "should destroy envelope" do
    assert_difference('Envelope.count', -1) do
      delete :destroy, id: @envelope
    end

    assert_redirected_to envelopes_path
  end
end
