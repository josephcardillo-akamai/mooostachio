require "application_system_test_case"

class MstatusesTest < ApplicationSystemTestCase
  setup do
    @mstatus = mstatuses(:one)
  end

  test "visiting the index" do
    visit mstatuses_url
    assert_selector "h1", text: "Mstatuses"
  end

  test "creating a Mstatus" do
    visit mstatuses_url
    click_on "New Mstatus"

    fill_in "Name", with: @mstatus.name
    click_on "Create Mstatus"

    assert_text "Mstatus was successfully created"
    click_on "Back"
  end

  test "updating a Mstatus" do
    visit mstatuses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mstatus.name
    click_on "Update Mstatus"

    assert_text "Mstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Mstatus" do
    visit mstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mstatus was successfully destroyed"
  end
end
