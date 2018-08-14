require 'test_helper'

class IncidentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incident_type = incident_types(:one)
  end

  test "should get index" do
    get incident_types_url, as: :json
    assert_response :success
  end

  test "should create incident_type" do
    assert_difference('IncidentType.count') do
      post incident_types_url, params: { incident_type: { name: @incident_type.name, risklevels_id: @incident_type.risklevels_id } }, as: :json
    end

    assert_response 201
  end

  test "should show incident_type" do
    get incident_type_url(@incident_type), as: :json
    assert_response :success
  end

  test "should update incident_type" do
    patch incident_type_url(@incident_type), params: { incident_type: { name: @incident_type.name, risklevels_id: @incident_type.risklevels_id } }, as: :json
    assert_response 200
  end

  test "should destroy incident_type" do
    assert_difference('IncidentType.count', -1) do
      delete incident_type_url(@incident_type), as: :json
    end

    assert_response 204
  end
end
