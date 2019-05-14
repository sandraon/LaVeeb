require "application_system_test_case"

class Admin::NavigationsTest < ApplicationSystemTestCase
  setup do
    @admin_navigation = admin_navigations(:one)
  end

  test "visiting the index" do
    visit admin_navigations_url
    assert_selector "h1", text: "Admin/Navigations"
  end

  test "creating a Navigation" do
    visit admin_navigations_url
    click_on "New Admin/Navigation"

    fill_in "Name", with: @admin_navigation.name
    fill_in "Path", with: @admin_navigation.path
    click_on "Create Navigation"

    assert_text "Navigation was successfully created"
    click_on "Back"
  end

  test "updating a Navigation" do
    visit admin_navigations_url
    click_on "Edit", match: :first

    fill_in "Name", with: @admin_navigation.name
    fill_in "Path", with: @admin_navigation.path
    click_on "Update Navigation"

    assert_text "Navigation was successfully updated"
    click_on "Back"
  end

  test "destroying a Navigation" do
    visit admin_navigations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Navigation was successfully destroyed"
  end
end
