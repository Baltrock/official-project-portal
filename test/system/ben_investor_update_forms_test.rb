require "application_system_test_case"

class BenInvestorUpdateFormsTest < ApplicationSystemTestCase
  setup do
    @ben_investor_update_form = ben_investor_update_forms(:one)
  end

  test "visiting the index" do
    visit ben_investor_update_forms_url
    assert_selector "h1", text: "Ben investor update forms"
  end

  test "should create ben investor update form" do
    visit ben_investor_update_forms_url
    click_on "New ben investor update form"

    fill_in "Projects involved", with: @ben_investor_update_form.projects_involved
    fill_in "Update description", with: @ben_investor_update_form.update_description
    fill_in "Update title", with: @ben_investor_update_form.update_title
    click_on "Create Ben investor update form"

    assert_text "Ben investor update form was successfully created"
    click_on "Back"
  end

  test "should update Ben investor update form" do
    visit ben_investor_update_form_url(@ben_investor_update_form)
    click_on "Edit this ben investor update form", match: :first

    fill_in "Projects involved", with: @ben_investor_update_form.projects_involved
    fill_in "Update description", with: @ben_investor_update_form.update_description
    fill_in "Update title", with: @ben_investor_update_form.update_title
    click_on "Update Ben investor update form"

    assert_text "Ben investor update form was successfully updated"
    click_on "Back"
  end

  test "should destroy Ben investor update form" do
    visit ben_investor_update_form_url(@ben_investor_update_form)
    click_on "Destroy this ben investor update form", match: :first

    assert_text "Ben investor update form was successfully destroyed"
  end
end
