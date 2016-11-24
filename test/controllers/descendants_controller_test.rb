require 'test_helper'

class DescendantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descendant = descendants(:one)
  end

  test "should get index" do
    get descendants_url
    assert_response :success
  end

  test "should get new" do
    get new_descendant_url
    assert_response :success
  end

  test "should create descendant" do
    assert_difference('Descendant.count') do
      post descendants_url, params: { descendant: { child_id: @descendant.child_id, name: @descendant.name } }
    end

    assert_redirected_to descendant_url(Descendant.last)
  end

  test "should show descendant" do
    get descendant_url(@descendant)
    assert_response :success
  end

  test "should get edit" do
    get edit_descendant_url(@descendant)
    assert_response :success
  end

  test "should update descendant" do
    patch descendant_url(@descendant), params: { descendant: { child_id: @descendant.child_id, name: @descendant.name } }
    assert_redirected_to descendant_url(@descendant)
  end

  test "should destroy descendant" do
    assert_difference('Descendant.count', -1) do
      delete descendant_url(@descendant)
    end

    assert_redirected_to descendants_url
  end
end
