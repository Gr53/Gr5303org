require 'test_helper'

class IdentificationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @identification_type = identification_types(:one)
  end

  test "should get index" do
    get identification_types_url, as: :json
    assert_response :success
  end

  test "should create identification_type" do
    assert_difference('IdentificationType.count') do
      post identification_types_url, params: { identification_type: { identificationtype: @identification_type.identificationtype } }, as: :json
    end

    assert_response 201
  end

  test "should show identification_type" do
    get identification_type_url(@identification_type), as: :json
    assert_response :success
  end

  test "should update identification_type" do
    patch identification_type_url(@identification_type), params: { identification_type: { identificationtype: @identification_type.identificationtype } }, as: :json
    assert_response 200
  end

  test "should destroy identification_type" do
    assert_difference('IdentificationType.count', -1) do
      delete identification_type_url(@identification_type), as: :json
    end

    assert_response 204
  end
end
