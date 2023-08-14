require "test_helper"

class BbClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bb_client = bb_clients(:one)
  end

  test "should get index" do
    get bb_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_bb_client_url
    assert_response :success
  end

  test "should create bb_client" do
    assert_difference("BbClient.count") do
      post bb_clients_url, params: { bb_client: { avatar: @bb_client.avatar, email: @bb_client.email, name: @bb_client.name } }
    end

    assert_redirected_to bb_client_url(BbClient.last)
  end

  test "should show bb_client" do
    get bb_client_url(@bb_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_bb_client_url(@bb_client)
    assert_response :success
  end

  test "should update bb_client" do
    patch bb_client_url(@bb_client), params: { bb_client: { avatar: @bb_client.avatar, email: @bb_client.email, name: @bb_client.name } }
    assert_redirected_to bb_client_url(@bb_client)
  end

  test "should destroy bb_client" do
    assert_difference("BbClient.count", -1) do
      delete bb_client_url(@bb_client)
    end

    assert_redirected_to bb_clients_url
  end
end
