require "application_system_test_case"

class BenAvailableBackstageFormsTest < ApplicationSystemTestCase
  setup do
    @ben_available_backstage_form = ben_available_backstage_forms(:one)
  end

  test "visiting the index" do
    visit ben_available_backstage_forms_url
    assert_selector "h1", text: "Ben available backstage forms"
  end

  test "should create ben available backstage form" do
    visit ben_available_backstage_forms_url
    click_on "New ben available backstage form"

    fill_in "Applicant window end", with: @ben_available_backstage_form.applicant_window_end
    fill_in "Applicants filled", with: @ben_available_backstage_form.applicants_filled
    fill_in "Applicants needed", with: @ben_available_backstage_form.applicants_needed
    fill_in "Project involved", with: @ben_available_backstage_form.project_involved
    fill_in "Role description", with: @ben_available_backstage_form.role_description
    fill_in "Role title", with: @ben_available_backstage_form.role_title
    click_on "Create Ben available backstage form"

    assert_text "Ben available backstage form was successfully created"
    click_on "Back"
  end

  test "should update Ben available backstage form" do
    visit ben_available_backstage_form_url(@ben_available_backstage_form)
    click_on "Edit this ben available backstage form", match: :first

    fill_in "Applicant window end", with: @ben_available_backstage_form.applicant_window_end
    fill_in "Applicants filled", with: @ben_available_backstage_form.applicants_filled
    fill_in "Applicants needed", with: @ben_available_backstage_form.applicants_needed
    fill_in "Project involved", with: @ben_available_backstage_form.project_involved
    fill_in "Role description", with: @ben_available_backstage_form.role_description
    fill_in "Role title", with: @ben_available_backstage_form.role_title
    click_on "Update Ben available backstage form"

    assert_text "Ben available backstage form was successfully updated"
    click_on "Back"
  end

  test "should destroy Ben available backstage form" do
    visit ben_available_backstage_form_url(@ben_available_backstage_form)
    click_on "Destroy this ben available backstage form", match: :first

    assert_text "Ben available backstage form was successfully destroyed"
  end
end
