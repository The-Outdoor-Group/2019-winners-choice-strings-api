require "application_system_test_case"

class BowsTest < ApplicationSystemTestCase
  setup do
    @bow = bows(:one)
  end

  test "visiting the index" do
    visit bows_url
    assert_selector "h1", text: "Bows"
  end

  test "creating a Bow" do
    visit bows_url
    click_on "New Bow"

    fill_in "Brand", with: @bow.brand_id
    fill_in "Name", with: @bow.name
    fill_in "Type", with: @bow.type_id
    click_on "Create Bow"

    assert_text "Bow was successfully created"
    click_on "Back"
  end

  test "updating a Bow" do
    visit bows_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @bow.brand_id
    fill_in "Name", with: @bow.name
    fill_in "Type", with: @bow.type_id
    click_on "Update Bow"

    assert_text "Bow was successfully updated"
    click_on "Back"
  end

  test "destroying a Bow" do
    visit bows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bow was successfully destroyed"
  end
end
