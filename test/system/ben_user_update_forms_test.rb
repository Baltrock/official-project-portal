require "application_system_test_case"

class BenUserUpdateFormsTest < ApplicationSystemTestCase
  setup do
    @ben_user_update_form = ben_user_update_forms(:one)
  end

  test "visiting the index" do
    visit ben_user_update_forms_url
    assert_selector "h1", text: "Ben user update forms"
  end

  test "should create ben user update form" do
    visit ben_user_update_forms_url
    click_on "New ben user update form"

    fill_in "Projects involved", with: @ben_user_update_form.projects_involved
    fill_in "Update description", with: @ben_user_update_form.update_description
    fill_in "Update title", with: @ben_user_update_form.update_title
    click_on "Create Ben user update form"

    assert_text "Ben user update form was successfully created"
    click_on "Back"
  end

  test "should update Ben user update form" do
    visit ben_user_update_form_url(@ben_user_update_form)
    click_on "Edit this ben user update form", match: :first

    fill_in "Projects involved", with: @ben_user_update_form.projects_involved
    fill_in "Update description", with: @ben_user_update_form.update_description
    fill_in "Update title", with: @ben_user_update_form.update_title
    click_on "Update Ben user update form"

    assert_text "Ben user update form was successfully updated"
    click_on "Back"
  end

  test "should destroy Ben user update form" do
    visit ben_user_update_form_url(@ben_user_update_form)
    click_on "Destroy this ben user update form", match: :first

    assert_text "Ben user update form was successfully destroyed"
  end
end
