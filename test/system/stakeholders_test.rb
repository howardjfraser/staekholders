require "application_system_test_case"

class StakeholdersTest < ApplicationSystemTestCase
  setup do
    @stakeholder = stakeholders(:one)
  end

  test "visiting the index" do
    visit stakeholders_url
    assert_selector "h1", text: "Stakeholders"
  end

  test "should create stakeholder" do
    visit stakeholders_url
    click_on "New stakeholder"

    fill_in "Faction", with: @stakeholder.faction
    fill_in "Name", with: @stakeholder.name
    fill_in "Party", with: @stakeholder.party
    click_on "Create Stakeholder"

    assert_text "Stakeholder was successfully created"
    click_on "Back"
  end

  test "should update Stakeholder" do
    visit stakeholder_url(@stakeholder)
    click_on "Edit this stakeholder", match: :first

    fill_in "Faction", with: @stakeholder.faction
    fill_in "Name", with: @stakeholder.name
    fill_in "Party", with: @stakeholder.party
    click_on "Update Stakeholder"

    assert_text "Stakeholder was successfully updated"
    click_on "Back"
  end

  test "should destroy Stakeholder" do
    visit stakeholder_url(@stakeholder)
    click_on "Destroy this stakeholder", match: :first

    assert_text "Stakeholder was successfully destroyed"
  end
end
