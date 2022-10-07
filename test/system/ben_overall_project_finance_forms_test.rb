require "application_system_test_case"

class BenOverallProjectFinanceFormsTest < ApplicationSystemTestCase
  setup do
    @ben_overall_project_finance_form = ben_overall_project_finance_forms(:one)
  end

  test "visiting the index" do
    visit ben_overall_project_finance_forms_url
    assert_selector "h1", text: "Ben overall project finance forms"
  end

  test "should create ben overall project finance form" do
    visit ben_overall_project_finance_forms_url
    click_on "New ben overall project finance form"

    fill_in "Currency", with: @ben_overall_project_finance_form.currency
    fill_in "Project description", with: @ben_overall_project_finance_form.project_description
    fill_in "Project title", with: @ben_overall_project_finance_form.project_title
    fill_in "Total investment", with: @ben_overall_project_finance_form.total_investment
    fill_in "Update", with: @ben_overall_project_finance_form.update
    click_on "Create Ben overall project finance form"

    assert_text "Ben overall project finance form was successfully created"
    click_on "Back"
  end

  test "should update Ben overall project finance form" do
    visit ben_overall_project_finance_form_url(@ben_overall_project_finance_form)
    click_on "Edit this ben overall project finance form", match: :first

    fill_in "Currency", with: @ben_overall_project_finance_form.currency
    fill_in "Project description", with: @ben_overall_project_finance_form.project_description
    fill_in "Project title", with: @ben_overall_project_finance_form.project_title
    fill_in "Total investment", with: @ben_overall_project_finance_form.total_investment
    fill_in "Update", with: @ben_overall_project_finance_form.update
    click_on "Update Ben overall project finance form"

    assert_text "Ben overall project finance form was successfully updated"
    click_on "Back"
  end

  test "should destroy Ben overall project finance form" do
    visit ben_overall_project_finance_form_url(@ben_overall_project_finance_form)
    click_on "Destroy this ben overall project finance form", match: :first

    assert_text "Ben overall project finance form was successfully destroyed"
  end
end
