require "application_system_test_case"

class BenNewProjectFormsTest < ApplicationSystemTestCase
  setup do
    @ben_new_project_form = ben_new_project_forms(:one)
  end

  test "visiting the index" do
    visit ben_new_project_forms_url
    assert_selector "h1", text: "Ben new project forms"
  end

  test "should create ben new project form" do
    visit ben_new_project_forms_url
    click_on "New ben new project form"

    fill_in "Available backstage roles", with: @ben_new_project_form.available_backstage_roles
    fill_in "Available frontstage roles", with: @ben_new_project_form.available_frontstage_roles
    fill_in "Project description", with: @ben_new_project_form.project_description
    fill_in "Project introduction", with: @ben_new_project_form.project_introduction
    fill_in "Project title", with: @ben_new_project_form.project_title
    click_on "Create Ben new project form"

    assert_text "Ben new project form was successfully created"
    click_on "Back"
  end

  test "should update Ben new project form" do
    visit ben_new_project_form_url(@ben_new_project_form)
    click_on "Edit this ben new project form", match: :first

    fill_in "Available backstage roles", with: @ben_new_project_form.available_backstage_roles
    fill_in "Available frontstage roles", with: @ben_new_project_form.available_frontstage_roles
    fill_in "Project description", with: @ben_new_project_form.project_description
    fill_in "Project introduction", with: @ben_new_project_form.project_introduction
    fill_in "Project title", with: @ben_new_project_form.project_title
    click_on "Update Ben new project form"

    assert_text "Ben new project form was successfully updated"
    click_on "Back"
  end

  test "should destroy Ben new project form" do
    visit ben_new_project_form_url(@ben_new_project_form)
    click_on "Destroy this ben new project form", match: :first

    assert_text "Ben new project form was successfully destroyed"
  end
end
