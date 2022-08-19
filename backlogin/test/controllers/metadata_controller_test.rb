require "test_helper"

class MetadataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metadatum = metadata(:one)
  end

  test "should get index" do
    get metadata_url, as: :json
    assert_response :success
  end

  test "should create metadatum" do
    assert_difference("Metadatum.count") do
      post metadata_url, params: { metadatum: { chave: @metadatum.chave, valor: @metadatum.valor } }, as: :json
    end

    assert_response :created
  end

  test "should show metadatum" do
    get metadatum_url(@metadatum), as: :json
    assert_response :success
  end

  test "should update metadatum" do
    patch metadatum_url(@metadatum), params: { metadatum: { chave: @metadatum.chave, valor: @metadatum.valor } }, as: :json
    assert_response :success
  end

  test "should destroy metadatum" do
    assert_difference("Metadatum.count", -1) do
      delete metadatum_url(@metadatum), as: :json
    end

    assert_response :no_content
  end
end
