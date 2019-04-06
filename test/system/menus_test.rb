require "application_system_test_case"

class MenusTest < ApplicationSystemTestCase
  setup do
    @menu = menus(:one)
  end

  test "visiting the index" do
    visit menus_url
    assert_selector "h1", text: "Menus"
  end

  test "creating a Menu" do
    visit menus_url
    click_on "New Menu"

    fill_in "Kirjeldus1", with: @menu.kirjeldus1
    fill_in "Kirjeldus2", with: @menu.kirjeldus2
    fill_in "Kirjeldus3", with: @menu.kirjeldus3
    fill_in "Kirjeldus4", with: @menu.kirjeldus4
    fill_in "Kirjeldus5", with: @menu.kirjeldus5
    fill_in "Lisainfo", with: @menu.lisainfo
    fill_in "Toidukord1", with: @menu.toidukord1
    fill_in "Toidukord2", with: @menu.toidukord2
    fill_in "Toidukord3", with: @menu.toidukord3
    fill_in "Toidukord4", with: @menu.toidukord4
    fill_in "Toidukord5", with: @menu.toidukord5
    click_on "Create Menu"

    assert_text "Menu was successfully created"
    click_on "Back"
  end

  test "updating a Menu" do
    visit menus_url
    click_on "Edit", match: :first

    fill_in "Kirjeldus1", with: @menu.kirjeldus1
    fill_in "Kirjeldus2", with: @menu.kirjeldus2
    fill_in "Kirjeldus3", with: @menu.kirjeldus3
    fill_in "Kirjeldus4", with: @menu.kirjeldus4
    fill_in "Kirjeldus5", with: @menu.kirjeldus5
    fill_in "Lisainfo", with: @menu.lisainfo
    fill_in "Toidukord1", with: @menu.toidukord1
    fill_in "Toidukord2", with: @menu.toidukord2
    fill_in "Toidukord3", with: @menu.toidukord3
    fill_in "Toidukord4", with: @menu.toidukord4
    fill_in "Toidukord5", with: @menu.toidukord5
    click_on "Update Menu"

    assert_text "Menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Menu" do
    visit menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menu was successfully destroyed"
  end
end
