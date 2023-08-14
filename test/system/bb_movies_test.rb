require "application_system_test_case"

class BbMoviesTest < ApplicationSystemTestCase
  setup do
    @bb_movie = bb_movies(:one)
  end

  test "visiting the index" do
    visit bb_movies_url
    assert_selector "h1", text: "Bb movies"
  end

  test "should create bb movie" do
    visit bb_movies_url
    click_on "New bb movie"

    fill_in "Image", with: @bb_movie.image
    fill_in "Name", with: @bb_movie.name
    click_on "Create Bb movie"

    assert_text "Bb movie was successfully created"
    click_on "Back"
  end

  test "should update Bb movie" do
    visit bb_movie_url(@bb_movie)
    click_on "Edit this bb movie", match: :first

    fill_in "Image", with: @bb_movie.image
    fill_in "Name", with: @bb_movie.name
    click_on "Update Bb movie"

    assert_text "Bb movie was successfully updated"
    click_on "Back"
  end

  test "should destroy Bb movie" do
    visit bb_movie_url(@bb_movie)
    click_on "Destroy this bb movie", match: :first

    assert_text "Bb movie was successfully destroyed"
  end
end
