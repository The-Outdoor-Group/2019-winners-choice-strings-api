require "application_system_test_case"

class BowStringsTest < ApplicationSystemTestCase
  setup do
    @bow_string = bow_strings(:one)
  end

  test "visiting the index" do
    visit bow_strings_url
    assert_selector "h1", text: "Bow Strings"
  end

  test "creating a Bow string" do
    visit bow_strings_url
    click_on "New Bow String"

    fill_in "Color", with: @bow_string.color_id
    fill_in "Material", with: @bow_string.material_id
    fill_in "Serving image", with: @bow_string.serving_image
    fill_in "Strand 1 image", with: @bow_string.strand_1_image
    fill_in "Strand 2 image", with: @bow_string.strand_2_image
    click_on "Create Bow string"

    assert_text "Bow string was successfully created"
    click_on "Back"
  end

  test "updating a Bow string" do
    visit bow_strings_url
    click_on "Edit", match: :first

    fill_in "Color", with: @bow_string.color_id
    fill_in "Material", with: @bow_string.material_id
    fill_in "Serving image", with: @bow_string.serving_image
    fill_in "Strand 1 image", with: @bow_string.strand_1_image
    fill_in "Strand 2 image", with: @bow_string.strand_2_image
    click_on "Update Bow string"

    assert_text "Bow string was successfully updated"
    click_on "Back"
  end

  test "destroying a Bow string" do
    visit bow_strings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bow string was successfully destroyed"
  end
end
