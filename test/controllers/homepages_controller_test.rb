require 'test_helper'

class HomepagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homepage = homepages(:one)
  end

  test "should get index" do
    get homepages_url
    assert_response :success
  end

  test "should get new" do
    get new_homepage_url
    assert_response :success
  end

  test "should create homepage" do
    assert_difference('Homepage.count') do
      post homepages_url, params: { homepage: { address1: @homepage.address1, address2: @homepage.address2, content: @homepage.content, epost: @homepage.epost, linkdest: @homepage.linkdest, linktekst: @homepage.linktekst, logo: @homepage.logo, orgname: @homepage.orgname, phone: @homepage.phone, pictext: @homepage.pictext, picture: @homepage.picture, uselink1: @homepage.uselink1, uselink2: @homepage.uselink2, uselink3: @homepage.uselink3, uselink4: @homepage.uselink4 } }
    end

    assert_redirected_to homepage_url(Homepage.last)
  end

  test "should show homepage" do
    get homepage_url(@homepage)
    assert_response :success
  end

  test "should get edit" do
    get edit_homepage_url(@homepage)
    assert_response :success
  end

  test "should update homepage" do
    patch homepage_url(@homepage), params: { homepage: { address1: @homepage.address1, address2: @homepage.address2, content: @homepage.content, epost: @homepage.epost, linkdest: @homepage.linkdest, linktekst: @homepage.linktekst, logo: @homepage.logo, orgname: @homepage.orgname, phone: @homepage.phone, pictext: @homepage.pictext, picture: @homepage.picture, uselink1: @homepage.uselink1, uselink2: @homepage.uselink2, uselink3: @homepage.uselink3, uselink4: @homepage.uselink4 } }
    assert_redirected_to homepage_url(@homepage)
  end

  test "should destroy homepage" do
    assert_difference('Homepage.count', -1) do
      delete homepage_url(@homepage)
    end

    assert_redirected_to homepages_url
  end
end
