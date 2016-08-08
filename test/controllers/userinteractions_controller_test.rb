require 'test_helper'

class UserinteractionsControllerTest < ActionController::TestCase
  setup do
    @userinteraction = userinteractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userinteractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userinteraction" do
    assert_difference('Userinteraction.count') do
      post :create, userinteraction: { answer: @userinteraction.answer, parkinglot_id: @userinteraction.parkinglot_id, question: @userinteraction.question }
    end

    assert_redirected_to userinteraction_path(assigns(:userinteraction))
  end

  test "should show userinteraction" do
    get :show, id: @userinteraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userinteraction
    assert_response :success
  end

  test "should update userinteraction" do
    patch :update, id: @userinteraction, userinteraction: { answer: @userinteraction.answer, parkinglot_id: @userinteraction.parkinglot_id, question: @userinteraction.question }
    assert_redirected_to userinteraction_path(assigns(:userinteraction))
  end

  test "should destroy userinteraction" do
    assert_difference('Userinteraction.count', -1) do
      delete :destroy, id: @userinteraction
    end

    assert_redirected_to userinteractions_path
  end
end
