require "test_helper"

class BbMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bb_movie = bb_movies(:one)
  end

  test "should get index" do
    get bb_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_bb_movie_url
    assert_response :success
  end

  test "should create bb_movie" do
    assert_difference("BbMovie.count") do
      post bb_movies_url, params: { bb_movie: { image: @bb_movie.image, name: @bb_movie.name } }
    end

    assert_redirected_to bb_movie_url(BbMovie.last)
  end

  test "should show bb_movie" do
    get bb_movie_url(@bb_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_bb_movie_url(@bb_movie)
    assert_response :success
  end

  test "should update bb_movie" do
    patch bb_movie_url(@bb_movie), params: { bb_movie: { image: @bb_movie.image, name: @bb_movie.name } }
    assert_redirected_to bb_movie_url(@bb_movie)
  end

  test "should destroy bb_movie" do
    assert_difference("BbMovie.count", -1) do
      delete bb_movie_url(@bb_movie)
    end

    assert_redirected_to bb_movies_url
  end
end
