require "application_system_test_case"

class FamiliesTest < ApplicationSystemTestCase
  setup do
    @family = families(:one)
  end

  test "visiting the index" do
    visit families_url
    assert_selector "h1", text: "Families"
  end

  test "should create family" do
    visit families_url
    click_on "New family"

    fill_in "Barangay", with: @family.barangay
    fill_in "Housenum", with: @family.houseNum
    check "Is 4ps" if @family.is_4ps
    fill_in "Name", with: @family.name
    fill_in "Streetnum", with: @family.streetNum
    click_on "Create Family"

    assert_text "Family was successfully created"
    click_on "Back"
  end

  test "should update Family" do
    visit family_url(@family)
    click_on "Edit this family", match: :first

    fill_in "Barangay", with: @family.barangay
    fill_in "Housenum", with: @family.houseNum
    check "Is 4ps" if @family.is_4ps
    fill_in "Name", with: @family.name
    fill_in "Streetnum", with: @family.streetNum
    click_on "Update Family"

    assert_text "Family was successfully updated"
    click_on "Back"
  end

  test "should destroy Family" do
    visit family_url(@family)
    click_on "Destroy this family", match: :first

    assert_text "Family was successfully destroyed"
  end
end
