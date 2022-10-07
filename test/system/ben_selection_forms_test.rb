require "application_system_test_case"

class BenSelectionFormsTest < ApplicationSystemTestCase
  setup do
    @ben_selection_form = ben_selection_forms(:one)
  end

  test "visiting the index" do
    visit ben_selection_forms_url
    assert_selector "h1", text: "Ben selection forms"
  end

  test "should create ben selection form" do
    visit ben_selection_forms_url
    click_on "New ben selection form"

    fill_in "Applicant selection", with: @ben_selection_form.applicant_selection
    fill_in "Project involved", with: @ben_selection_form.project_involved
    fill_in "Role involved", with: @ben_selection_form.role_involved
    click_on "Create Ben selection form"

    assert_text "Ben selection form was successfully created"
    click_on "Back"
  end

  test "should update Ben selection form" do
    visit ben_selection_form_url(@ben_selection_form)
    click_on "Edit this ben selection form", match: :first

    fill_in "Applicant selection", with: @ben_selection_form.applicant_selection
    fill_in "Project involved", with: @ben_selection_form.project_involved
    fill_in "Role involved", with: @ben_selection_form.role_involved
    click_on "Update Ben selection form"

    assert_text "Ben selection form was successfully updated"
    click_on "Back"
  end

  test "should destroy Ben selection form" do
    visit ben_selection_form_url(@ben_selection_form)
    click_on "Destroy this ben selection form", match: :first

    assert_text "Ben selection form was successfully destroyed"
  end
end
