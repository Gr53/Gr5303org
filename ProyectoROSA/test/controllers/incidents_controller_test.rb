require 'test_helper'

class IncidentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incident = incidents(:one)
  end

  test "should get index" do
    get incidents_url, as: :json
    assert_response :success
  end

  test "should create incident" do
    assert_difference('Incident.count') do
      post incidents_url, params: { incident: { descripcion: @incident.descripcion, fecha: @incident.fecha, gnbtnpanico: @incident.gnbtnpanico, imagen: @incident.imagen, incidenttypes_id: @incident.incidenttypes_id, latitude: @incident.latitude, longitude: @incident.longitude, nambulancia: @incident.nambulancia, npolicia: @incident.npolicia, pmuerte: @incident.pmuerte, prioridad: @incident.prioridad, riesgo: @incident.riesgo, users_id: @incident.users_id } }, as: :json
    end

    assert_response 201
  end

  test "should show incident" do
    get incident_url(@incident), as: :json
    assert_response :success
  end

  test "should update incident" do
    patch incident_url(@incident), params: { incident: { descripcion: @incident.descripcion, fecha: @incident.fecha, gnbtnpanico: @incident.gnbtnpanico, imagen: @incident.imagen, incidenttypes_id: @incident.incidenttypes_id, latitude: @incident.latitude, longitude: @incident.longitude, nambulancia: @incident.nambulancia, npolicia: @incident.npolicia, pmuerte: @incident.pmuerte, prioridad: @incident.prioridad, riesgo: @incident.riesgo, users_id: @incident.users_id } }, as: :json
    assert_response 200
  end

  test "should destroy incident" do
    assert_difference('Incident.count', -1) do
      delete incident_url(@incident), as: :json
    end

    assert_response 204
  end
end
