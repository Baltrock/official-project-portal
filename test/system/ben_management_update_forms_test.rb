require "application_system_test_case"

class BenManagementUpdateFormsTest < ApplicationSystemTestCase
  setup do
    @ben_management_update_form = ben_management_update_forms(:one)
  end

  test "visiting the index" do
    visit ben_management_update_forms_url
    assert_selector "h1", text: "Ben management update forms"
  end

  test "should create ben management update form" do
    visit ben_management_update_forms_url
    click_on "New ben management update form"

    fill_in "Projects involved", with: @ben_management_update_form.projects_involved
    fill_in "Update description", with: @ben_management_update_form.update_description
    fill_in "Update title", with: @ben_management_update_form.update_title
    click_on "Create Ben management update form"

    assert_text "Ben management update form was successfully created"
    click_on "Back"
  end

  test "should update Ben management update form" do
    visit ben_management_update_form_url(@ben_management_update_form)
    click_on "Edit this ben management update form", match: :first

    fill_in "Projects involved", with: @ben_management_update_form.projects_involved
    fill_in "Update description", with: @ben_management_update_form.update_description
    fill_in "Update title", with: @ben_management_update_form.update_title
    click_on "Update Ben management update form"

    assert_text "Ben management update form was successfully updated"
    click_on "Back"
  end

  test "should destroy Ben management update form" do
    visit ben_management_update_form_url(@ben_management_update_form)
    click_on "Destroy this ben management update form", match: :first

    assert_text "Ben management update form was successfully destroyed"
  end
end
