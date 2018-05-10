require "application_system_test_case"

class MaccountsTest < ApplicationSystemTestCase
  setup do
    @maccount = maccounts(:one)
  end

  test "visiting the index" do
    visit maccounts_url
    assert_selector "h1", text: "Maccounts"
  end

  test "creating a Maccount" do
    visit maccounts_url
    click_on "New Maccount"

    fill_in "Name", with: @maccount.name
    click_on "Create Maccount"

    assert_text "Maccount was successfully created"
    click_on "Back"
  end

  test "updating a Maccount" do
    visit maccounts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @maccount.name
    click_on "Update Maccount"

    assert_text "Maccount was successfully updated"
    click_on "Back"
  end

  test "destroying a Maccount" do
    visit maccounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maccount was successfully destroyed"
  end
end
