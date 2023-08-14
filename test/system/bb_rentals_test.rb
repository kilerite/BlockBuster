require "application_system_test_case"

class BbRentalsTest < ApplicationSystemTestCase
  setup do
    @bb_rental = bb_rentals(:one)
  end

  test "visiting the index" do
    visit bb_rentals_url
    assert_selector "h1", text: "Bb rentals"
  end

  test "should create bb rental" do
    visit bb_rentals_url
    click_on "New bb rental"

    fill_in "Bb client", with: @bb_rental.bb_client_id
    fill_in "Bb movie", with: @bb_rental.bb_movie_id
    click_on "Create Bb rental"

    assert_text "Bb rental was successfully created"
    click_on "Back"
  end

  test "should update Bb rental" do
    visit bb_rental_url(@bb_rental)
    click_on "Edit this bb rental", match: :first

    fill_in "Bb client", with: @bb_rental.bb_client_id
    fill_in "Bb movie", with: @bb_rental.bb_movie_id
    click_on "Update Bb rental"

    assert_text "Bb rental was successfully updated"
    click_on "Back"
  end

  test "should destroy Bb rental" do
    visit bb_rental_url(@bb_rental)
    click_on "Destroy this bb rental", match: :first

    assert_text "Bb rental was successfully destroyed"
  end
end
