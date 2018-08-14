require 'test_helper'

class RiskLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @risk_level = risk_levels(:one)
  end

  test "should get index" do
    get risk_levels_url, as: :json
    assert_response :success
  end

  test "should create risk_level" do
    assert_difference('RiskLevel.count') do
      post risk_levels_url, params: { risk_level: { level: @risk_level.level } }, as: :json
    end

    assert_response 201
  end

  test "should show risk_level" do
    get risk_level_url(@risk_level), as: :json
    assert_response :success
  end

  test "should update risk_level" do
    patch risk_level_url(@risk_level), params: { risk_level: { level: @risk_level.level } }, as: :json
    assert_response 200
  end

  test "should destroy risk_level" do
    assert_difference('RiskLevel.count', -1) do
      delete risk_level_url(@risk_level), as: :json
    end

    assert_response 204
  end
end
