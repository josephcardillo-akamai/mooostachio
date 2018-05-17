require "application_system_test_case"

class McategoriesTest < ApplicationSystemTestCase
  setup do
    @mcategory = mcategories(:one)
  end

  test "visiting the index" do
    visit mcategories_url
    assert_selector "h1", text: "Mcategories"
  end

  test "creating a Mcategory" do
    visit mcategories_url
    click_on "New Category"

    fill_in "Name", with: @mcategory.name
    click_on "Create Category"

    assert_text "Category was successfully created"
    click_on "Back"
  end

  test "updating a Category" do
    visit mcategories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mcategory.name
    click_on "Update Category"

    assert_text "Category was successfully updated"
    click_on "Back"
  end

  test "destroying a Category" do
    visit mcategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category was successfully destroyed"
  end
end
