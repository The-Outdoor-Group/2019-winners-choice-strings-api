require 'test_helper'

class BowStringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bow_string = bow_strings(:one)
  end

  test "should get index" do
    get bow_strings_url
    assert_response :success
  end

  test "should get new" do
    get new_bow_string_url
    assert_response :success
  end

  test "should create bow_string" do
    assert_difference('BowString.count') do
      post bow_strings_url, params: { bow_string: { color_id: @bow_string.color_id, material_id: @bow_string.material_id, serving_image: @bow_string.serving_image, strand_1_image: @bow_string.strand_1_image, strand_2_image: @bow_string.strand_2_image } }
    end

    assert_redirected_to bow_string_url(BowString.last)
  end

  test "should show bow_string" do
    get bow_string_url(@bow_string)
    assert_response :success
  end

  test "should get edit" do
    get edit_bow_string_url(@bow_string)
    assert_response :success
  end

  test "should update bow_string" do
    patch bow_string_url(@bow_string), params: { bow_string: { color_id: @bow_string.color_id, material_id: @bow_string.material_id, serving_image: @bow_string.serving_image, strand_1_image: @bow_string.strand_1_image, strand_2_image: @bow_string.strand_2_image } }
    assert_redirected_to bow_string_url(@bow_string)
  end

  test "should destroy bow_string" do
    assert_difference('BowString.count', -1) do
      delete bow_string_url(@bow_string)
    end

    assert_redirected_to bow_strings_url
  end
end
