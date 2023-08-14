require "application_system_test_case"

class BbClientsTest < ApplicationSystemTestCase
  setup do
    @bb_client = bb_clients(:one)
  end

  test "visiting the index" do
    visit bb_clients_url
    assert_selector "h1", text: "Bb clients"
  end

  test "should create bb client" do
    visit bb_clients_url
    click_on "New bb client"

    fill_in "Avatar", with: @bb_client.avatar
    fill_in "Email", with: @bb_client.email
    fill_in "Name", with: @bb_client.name
    click_on "Create Bb client"

    assert_text "Bb client was successfully created"
    click_on "Back"
  end

  test "should update Bb client" do
    visit bb_client_url(@bb_client)
    click_on "Edit this bb client", match: :first

    fill_in "Avatar", with: @bb_client.avatar
    fill_in "Email", with: @bb_client.email
    fill_in "Name", with: @bb_client.name
    click_on "Update Bb client"

    assert_text "Bb client was successfully updated"
    click_on "Back"
  end

  test "should destroy Bb client" do
    visit bb_client_url(@bb_client)
    click_on "Destroy this bb client", match: :first

    assert_text "Bb client was successfully destroyed"
  end
end
