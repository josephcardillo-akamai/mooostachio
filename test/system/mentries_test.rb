require "application_system_test_case"

class MentriesTest < ApplicationSystemTestCase
  setup do
    @mentry = mentries(:one)
  end

  test "visiting the index" do
    visit mentries_url
    assert_selector "h1", text: "Mentries"
  end

  test "creating a Mentry" do
    visit mentries_url
    click_on "New Mentry"

    fill_in "Amount", with: @mentry.amount
    fill_in "Date", with: @mentry.date
    fill_in "Note", with: @mentry.note
    click_on "Create Mentry"

    assert_text "Mentry was successfully created"
    click_on "Back"
  end

  test "updating a Mentry" do
    visit mentries_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @mentry.amount
    fill_in "Date", with: @mentry.date
    fill_in "Note", with: @mentry.note
    click_on "Update Mentry"

    assert_text "Mentry was successfully updated"
    click_on "Back"
  end

  test "destroying a Mentry" do
    visit mentries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mentry was successfully destroyed"
  end
end
