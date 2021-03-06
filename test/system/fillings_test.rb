require "application_system_test_case"

class FillingsTest < ApplicationSystemTestCase
  setup do
    @filling = fillings(:one)
  end

  test "visiting the index" do
    visit fillings_url
    assert_selector "h1", text: "Fillings"
  end

  test "creating a Filling" do
    visit fillings_url
    click_on "New Filling"

    fill_in "Description", with: @filling.description
    fill_in "Name", with: @filling.name
    fill_in "Price", with: @filling.price
    click_on "Create Filling"

    assert_text "Filling was successfully created"
    click_on "Back"
  end

  test "updating a Filling" do
    visit fillings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @filling.description
    fill_in "Name", with: @filling.name
    fill_in "Price", with: @filling.price
    click_on "Update Filling"

    assert_text "Filling was successfully updated"
    click_on "Back"
  end

  test "destroying a Filling" do
    visit fillings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Filling was successfully destroyed"
  end
end
