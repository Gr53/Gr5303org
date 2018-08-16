require 'test_helper'

class KiddlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kiddle = kiddles(:one)
  end

  test "should get index" do
    get kiddles_url, as: :json
    assert_response :success
  end

  test "should create kiddle" do
    assert_difference('Kiddle.count') do
      post kiddles_url, params: { kiddle: { name: @kiddle.name, neighborhoods_id: @kiddle.neighborhoods_id } }, as: :json
    end

    assert_response 201
  end

  test "should show kiddle" do
    get kiddle_url(@kiddle), as: :json
    assert_response :success
  end

  test "should update kiddle" do
    patch kiddle_url(@kiddle), params: { kiddle: { name: @kiddle.name, neighborhoods_id: @kiddle.neighborhoods_id } }, as: :json
    assert_response 200
  end

  test "should destroy kiddle" do
    assert_difference('Kiddle.count', -1) do
      delete kiddle_url(@kiddle), as: :json
    end

    assert_response 204
  end
end
