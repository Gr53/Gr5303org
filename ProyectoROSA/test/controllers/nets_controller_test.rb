require 'test_helper'

class NetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @net = nets(:one)
  end

  test "should get index" do
    get nets_url, as: :json
    assert_response :success
  end

  test "should create net" do
    assert_difference('Net.count') do
      post nets_url, params: { net: { name: @net.name, neighborhoods_id: @net.neighborhoods_id } }, as: :json
    end

    assert_response 201
  end

  test "should show net" do
    get net_url(@net), as: :json
    assert_response :success
  end

  test "should update net" do
    patch net_url(@net), params: { net: { name: @net.name, neighborhoods_id: @net.neighborhoods_id } }, as: :json
    assert_response 200
  end

  test "should destroy net" do
    assert_difference('Net.count', -1) do
      delete net_url(@net), as: :json
    end

    assert_response 204
  end
end
