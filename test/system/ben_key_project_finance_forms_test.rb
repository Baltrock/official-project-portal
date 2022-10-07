require "application_system_test_case"

class BenKeyProjectFinanceFormsTest < ApplicationSystemTestCase
  setup do
    @ben_key_project_finance_form = ben_key_project_finance_forms(:one)
  end

  test "visiting the index" do
    visit ben_key_project_finance_forms_url
    assert_selector "h1", text: "Ben key project finance forms"
  end

  test "should create ben key project finance form" do
    visit ben_key_project_finance_forms_url
    click_on "New ben key project finance form"

    fill_in "Currency", with: @ben_key_project_finance_form.currency
    fill_in "Project description", with: @ben_key_project_finance_form.project_description
    fill_in "Project title", with: @ben_key_project_finance_form.project_title
    fill_in "Total investment", with: @ben_key_project_finance_form.total_investment
    fill_in "Update", with: @ben_key_project_finance_form.update
    click_on "Create Ben key project finance form"

    assert_text "Ben key project finance form was successfully created"
    click_on "Back"
  end

  test "should update Ben key project finance form" do
    visit ben_key_project_finance_form_url(@ben_key_project_finance_form)
    click_on "Edit this ben key project finance form", match: :first

    fill_in "Currency", with: @ben_key_project_finance_form.currency
    fill_in "Project description", with: @ben_key_project_finance_form.project_description
    fill_in "Project title", with: @ben_key_project_finance_form.project_title
    fill_in "Total investment", with: @ben_key_project_finance_form.total_investment
    fill_in "Update", with: @ben_key_project_finance_form.update
    click_on "Update Ben key project finance form"

    assert_text "Ben key project finance form was successfully updated"
    click_on "Back"
  end

  test "should destroy Ben key project finance form" do
    visit ben_key_project_finance_form_url(@ben_key_project_finance_form)
    click_on "Destroy this ben key project finance form", match: :first

    assert_text "Ben key project finance form was successfully destroyed"
  end
end
