require 'test_helper'

class SupportNetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_net = support_nets(:one)
  end

  test "should get index" do
    get support_nets_url, as: :json
    assert_response :success
  end

  test "should create support_net" do
    assert_difference('SupportNet.count') do
      post support_nets_url, params: { support_net: { name: @support_net.name, nets_id: @support_net.nets_id } }, as: :json
    end

    assert_response 201
  end

  test "should show support_net" do
    get support_net_url(@support_net), as: :json
    assert_response :success
  end

  test "should update support_net" do
    patch support_net_url(@support_net), params: { support_net: { name: @support_net.name, nets_id: @support_net.nets_id } }, as: :json
    assert_response 200
  end

  test "should destroy support_net" do
    assert_difference('SupportNet.count', -1) do
      delete support_net_url(@support_net), as: :json
    end

    assert_response 204
  end
end
