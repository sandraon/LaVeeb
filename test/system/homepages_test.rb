require "application_system_test_case"

class HomepagesTest < ApplicationSystemTestCase
  setup do
    @homepage = homepages(:one)
  end

  test "visiting the index" do
    visit homepages_url
    assert_selector "h1", text: "Homepages"
  end

  test "creating a Homepage" do
    visit homepages_url
    click_on "New Homepage"

    fill_in "Address1", with: @homepage.address1
    fill_in "Address2", with: @homepage.address2
    fill_in "Content", with: @homepage.content
    fill_in "Epost", with: @homepage.epost
    fill_in "Linkdest", with: @homepage.linkdest
    fill_in "Linktekst", with: @homepage.linktekst
    fill_in "Logo", with: @homepage.logo
    fill_in "Orgname", with: @homepage.orgname
    fill_in "Phone", with: @homepage.phone
    fill_in "Pictext", with: @homepage.pictext
    fill_in "Picture", with: @homepage.picture
    fill_in "Uselink1", with: @homepage.uselink1
    fill_in "Uselink2", with: @homepage.uselink2
    fill_in "Uselink3", with: @homepage.uselink3
    fill_in "Uselink4", with: @homepage.uselink4
    click_on "Create Homepage"

    assert_text "Homepage was successfully created"
    click_on "Back"
  end

  test "updating a Homepage" do
    visit homepages_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @homepage.address1
    fill_in "Address2", with: @homepage.address2
    fill_in "Content", with: @homepage.content
    fill_in "Epost", with: @homepage.epost
    fill_in "Linkdest", with: @homepage.linkdest
    fill_in "Linktekst", with: @homepage.linktekst
    fill_in "Logo", with: @homepage.logo
    fill_in "Orgname", with: @homepage.orgname
    fill_in "Phone", with: @homepage.phone
    fill_in "Pictext", with: @homepage.pictext
    fill_in "Picture", with: @homepage.picture
    fill_in "Uselink1", with: @homepage.uselink1
    fill_in "Uselink2", with: @homepage.uselink2
    fill_in "Uselink3", with: @homepage.uselink3
    fill_in "Uselink4", with: @homepage.uselink4
    click_on "Update Homepage"

    assert_text "Homepage was successfully updated"
    click_on "Back"
  end

  test "destroying a Homepage" do
    visit homepages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Homepage was successfully destroyed"
  end
end
