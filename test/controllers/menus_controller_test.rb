require 'test_helper'

class MenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menu = menus(:one)
  end

  test "should get index" do
    get menus_url
    assert_response :success
  end

  test "should get new" do
    get new_menu_url
    assert_response :success
  end

  test "should create menu" do
    assert_difference('Menu.count') do
      post menus_url, params: { menu: { kirjeldus1: @menu.kirjeldus1, kirjeldus2: @menu.kirjeldus2, kirjeldus3: @menu.kirjeldus3, kirjeldus4: @menu.kirjeldus4, kirjeldus5: @menu.kirjeldus5, lisainfo: @menu.lisainfo, toidukord1: @menu.toidukord1, toidukord2: @menu.toidukord2, toidukord3: @menu.toidukord3, toidukord4: @menu.toidukord4, toidukord5: @menu.toidukord5 } }
    end

    assert_redirected_to menu_url(Menu.last)
  end

  test "should show menu" do
    get menu_url(@menu)
    assert_response :success
  end

  test "should get edit" do
    get edit_menu_url(@menu)
    assert_response :success
  end

  test "should update menu" do
    patch menu_url(@menu), params: { menu: { kirjeldus1: @menu.kirjeldus1, kirjeldus2: @menu.kirjeldus2, kirjeldus3: @menu.kirjeldus3, kirjeldus4: @menu.kirjeldus4, kirjeldus5: @menu.kirjeldus5, lisainfo: @menu.lisainfo, toidukord1: @menu.toidukord1, toidukord2: @menu.toidukord2, toidukord3: @menu.toidukord3, toidukord4: @menu.toidukord4, toidukord5: @menu.toidukord5 } }
    assert_redirected_to menu_url(@menu)
  end

  test "should destroy menu" do
    assert_difference('Menu.count', -1) do
      delete menu_url(@menu)
    end

    assert_redirected_to menus_url
  end
end
