require 'test_helper'

class Admin::NavigationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_navigation = admin_navigations(:one)
  end

  test "should get index" do
    get admin_navigations_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_navigation_url
    assert_response :success
  end

  test "should create admin_navigation" do
    assert_difference('Admin::Navigation.count') do
      post admin_navigations_url, params: { admin_navigation: { name: @admin_navigation.name, path: @admin_navigation.path } }
    end

    assert_redirected_to admin_navigation_url(Admin::Navigation.last)
  end

  test "should show admin_navigation" do
    get admin_navigation_url(@admin_navigation)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_navigation_url(@admin_navigation)
    assert_response :success
  end

  test "should update admin_navigation" do
    patch admin_navigation_url(@admin_navigation), params: { admin_navigation: { name: @admin_navigation.name, path: @admin_navigation.path } }
    assert_redirected_to admin_navigation_url(@admin_navigation)
  end

  test "should destroy admin_navigation" do
    assert_difference('Admin::Navigation.count', -1) do
      delete admin_navigation_url(@admin_navigation)
    end

    assert_redirected_to admin_navigations_url
  end
end
