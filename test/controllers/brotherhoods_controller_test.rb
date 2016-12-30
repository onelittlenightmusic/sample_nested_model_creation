require 'test_helper'

class BrotherhoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brotherhood = brotherhoods(:one)
  end

  test "should get index" do
    get brotherhoods_url
    assert_response :success
  end

  test "should get new" do
    get new_brotherhood_url
    assert_response :success
  end

  test "should create brotherhood" do
    assert_difference('Brotherhood.count') do
      post brotherhoods_url, params: { brotherhood: { parent2_id: @brotherhood.parent2_id, parent_id: @brotherhood.parent_id } }
    end

    assert_redirected_to brotherhood_url(Brotherhood.last)
  end

  test "should show brotherhood" do
    get brotherhood_url(@brotherhood)
    assert_response :success
  end

  test "should get edit" do
    get edit_brotherhood_url(@brotherhood)
    assert_response :success
  end

  test "should update brotherhood" do
    patch brotherhood_url(@brotherhood), params: { brotherhood: { parent2_id: @brotherhood.parent2_id, parent_id: @brotherhood.parent_id } }
    assert_redirected_to brotherhood_url(@brotherhood)
  end

  test "should destroy brotherhood" do
    assert_difference('Brotherhood.count', -1) do
      delete brotherhood_url(@brotherhood)
    end

    assert_redirected_to brotherhoods_url
  end
end
