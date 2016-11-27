require 'test_helper'

class BrothersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brother = brothers(:one)
  end

  test "should get index" do
    get brothers_url
    assert_response :success
  end

  test "should get new" do
    get new_brother_url
    assert_response :success
  end

  test "should create brother" do
    assert_difference('Brother.count') do
      post brothers_url, params: { brother: { name: @brother.name, parent_id: @brother.parent_id } }
    end

    assert_redirected_to brother_url(Brother.last)
  end

  test "should show brother" do
    get brother_url(@brother)
    assert_response :success
  end

  test "should get edit" do
    get edit_brother_url(@brother)
    assert_response :success
  end

  test "should update brother" do
    patch brother_url(@brother), params: { brother: { name: @brother.name, parent_id: @brother.parent_id } }
    assert_redirected_to brother_url(@brother)
  end

  test "should destroy brother" do
    assert_difference('Brother.count', -1) do
      delete brother_url(@brother)
    end

    assert_redirected_to brothers_url
  end
end
