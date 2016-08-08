require 'test_helper'

class ParkinglotsControllerTest < ActionController::TestCase
  setup do
    @parkinglot = parkinglots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parkinglots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parkinglot" do
    assert_difference('Parkinglot.count') do
      post :create, parkinglot: { address: @parkinglot.address, addressreference: @parkinglot.addressreference, businesshours: @parkinglot.businesshours, camera: @parkinglot.camera, name: @parkinglot.name, nearby_id: @parkinglot.nearby_id, pricingday: @parkinglot.pricingday, pricinghour: @parkinglot.pricinghour, security: @parkinglot.security, ubigeo_id: @parkinglot.ubigeo_id, user_id: @parkinglot.user_id }
    end

    assert_redirected_to parkinglot_path(assigns(:parkinglot))
  end

  test "should show parkinglot" do
    get :show, id: @parkinglot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parkinglot
    assert_response :success
  end

  test "should update parkinglot" do
    patch :update, id: @parkinglot, parkinglot: { address: @parkinglot.address, addressreference: @parkinglot.addressreference, businesshours: @parkinglot.businesshours, camera: @parkinglot.camera, name: @parkinglot.name, nearby_id: @parkinglot.nearby_id, pricingday: @parkinglot.pricingday, pricinghour: @parkinglot.pricinghour, security: @parkinglot.security, ubigeo_id: @parkinglot.ubigeo_id, user_id: @parkinglot.user_id }
    assert_redirected_to parkinglot_path(assigns(:parkinglot))
  end

  test "should destroy parkinglot" do
    assert_difference('Parkinglot.count', -1) do
      delete :destroy, id: @parkinglot
    end

    assert_redirected_to parkinglots_path
  end
end
