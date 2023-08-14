require "test_helper"

class BbRentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bb_rental = bb_rentals(:one)
  end

  test "should get index" do
    get bb_rentals_url
    assert_response :success
  end

  test "should get new" do
    get new_bb_rental_url
    assert_response :success
  end

  test "should create bb_rental" do
    assert_difference("BbRental.count") do
      post bb_rentals_url, params: { bb_rental: { bb_client_id: @bb_rental.bb_client_id, bb_movie_id: @bb_rental.bb_movie_id } }
    end

    assert_redirected_to bb_rental_url(BbRental.last)
  end

  test "should show bb_rental" do
    get bb_rental_url(@bb_rental)
    assert_response :success
  end

  test "should get edit" do
    get edit_bb_rental_url(@bb_rental)
    assert_response :success
  end

  test "should update bb_rental" do
    patch bb_rental_url(@bb_rental), params: { bb_rental: { bb_client_id: @bb_rental.bb_client_id, bb_movie_id: @bb_rental.bb_movie_id } }
    assert_redirected_to bb_rental_url(@bb_rental)
  end

  test "should destroy bb_rental" do
    assert_difference("BbRental.count", -1) do
      delete bb_rental_url(@bb_rental)
    end

    assert_redirected_to bb_rentals_url
  end
end
