require 'test_helper'

class SpecialFeaturesControllerTest < ActionController::TestCase
  setup do
    @special_feature = special_features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_feature" do
    assert_difference('SpecialFeature.count') do
      post :create, special_feature: { description: @special_feature.description, name: @special_feature.name }
    end

    assert_redirected_to special_feature_path(assigns(:special_feature))
  end

  test "should show special_feature" do
    get :show, id: @special_feature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_feature
    assert_response :success
  end

  test "should update special_feature" do
    patch :update, id: @special_feature, special_feature: { description: @special_feature.description, name: @special_feature.name }
    assert_redirected_to special_feature_path(assigns(:special_feature))
  end

  test "should destroy special_feature" do
    assert_difference('SpecialFeature.count', -1) do
      delete :destroy, id: @special_feature
    end

    assert_redirected_to special_features_path
  end
end
