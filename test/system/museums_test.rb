require "application_system_test_case"

class MuseumsTest < ApplicationSystemTestCase
  setup do
    @museum = museums(:one)
  end

  test "visiting the index" do
    visit museums_url
    assert_selector "h1", text: "Museums"
  end

  test "should create museum" do
    visit museums_url
    click_on "New museum"

    fill_in "Name", with: @museum.name
    click_on "Create Museum"

    assert_text "Museum was successfully created"
    click_on "Back"
  end

  test "should update Museum" do
    visit museum_url(@museum)
    click_on "Edit this museum", match: :first

    fill_in "Name", with: @museum.name
    click_on "Update Museum"

    assert_text "Museum was successfully updated"
    click_on "Back"
  end

  test "should destroy Museum" do
    visit museum_url(@museum)
    click_on "Destroy this museum", match: :first

    assert_text "Museum was successfully destroyed"
  end
end
