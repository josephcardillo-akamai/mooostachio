require "application_system_test_case"

class MlocationsTest < ApplicationSystemTestCase
  setup do
    @mlocation = mlocations(:one)
  end

  test "visiting the index" do
    visit mlocations_url
    assert_selector "h1", text: "Mlocations"
  end

  test "creating a Mlocation" do
    visit mlocations_url
    click_on "New Mlocation"

    fill_in "Name", with: @mlocation.name
    click_on "Create Mlocation"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "updating a Mlocation" do
    visit mlocations_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mlocation.name
    click_on "Update Mlocation"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "destroying a Mlocation" do
    visit mlocations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location was successfully destroyed"
  end
end
