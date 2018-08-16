require 'test_helper'

class NNetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @n_net = n_nets(:one)
  end

  test "should get index" do
    get n_nets_url, as: :json
    assert_response :success
  end

  test "should create n_net" do
    assert_difference('NNet.count') do
      post n_nets_url, params: { n_net: { name: @n_net.name, neighborhoods_id: @n_net.neighborhoods_id } }, as: :json
    end

    assert_response 201
  end

  test "should show n_net" do
    get n_net_url(@n_net), as: :json
    assert_response :success
  end

  test "should update n_net" do
    patch n_net_url(@n_net), params: { n_net: { name: @n_net.name, neighborhoods_id: @n_net.neighborhoods_id } }, as: :json
    assert_response 200
  end

  test "should destroy n_net" do
    assert_difference('NNet.count', -1) do
      delete n_net_url(@n_net), as: :json
    end

    assert_response 204
  end
end
