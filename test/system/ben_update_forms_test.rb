require "application_system_test_case"

class BenUpdateFormsTest < ApplicationSystemTestCase
  setup do
    @ben_update_form = ben_update_forms(:one)
  end

  test "visiting the index" do
    visit ben_update_forms_url
    assert_selector "h1", text: "Ben update forms"
  end

  test "should create ben update form" do
    visit ben_update_forms_url
    click_on "New ben update form"

    fill_in "Projects involved", with: @ben_update_form.projects_involved
    fill_in "Update description", with: @ben_update_form.update_description
    fill_in "Update title", with: @ben_update_form.update_title
    click_on "Create Ben update form"

    assert_text "Ben update form was successfully created"
    click_on "Back"
  end

  test "should update Ben update form" do
    visit ben_update_form_url(@ben_update_form)
    click_on "Edit this ben update form", match: :first

    fill_in "Projects involved", with: @ben_update_form.projects_involved
    fill_in "Update description", with: @ben_update_form.update_description
    fill_in "Update title", with: @ben_update_form.update_title
    click_on "Update Ben update form"

    assert_text "Ben update form was successfully updated"
    click_on "Back"
  end

  test "should destroy Ben update form" do
    visit ben_update_form_url(@ben_update_form)
    click_on "Destroy this ben update form", match: :first

    assert_text "Ben update form was successfully destroyed"
  end
end
