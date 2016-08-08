require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post :create, reservation: { byday: @reservation.byday, byhour: @reservation.byhour, dateend: @reservation.dateend, datestart: @reservation.datestart, parkinglot_id: @reservation.parkinglot_id, timeend: @reservation.timeend, timestart: @reservation.timestart, user_id: @reservation.user_id }
    end

    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should show reservation" do
    get :show, id: @reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation
    assert_response :success
  end

  test "should update reservation" do
    patch :update, id: @reservation, reservation: { byday: @reservation.byday, byhour: @reservation.byhour, dateend: @reservation.dateend, datestart: @reservation.datestart, parkinglot_id: @reservation.parkinglot_id, timeend: @reservation.timeend, timestart: @reservation.timestart, user_id: @reservation.user_id }
    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete :destroy, id: @reservation
    end

    assert_redirected_to reservations_path
  end
end