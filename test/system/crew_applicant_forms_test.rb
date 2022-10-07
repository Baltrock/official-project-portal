require "application_system_test_case"

class CrewApplicantFormsTest < ApplicationSystemTestCase
  setup do
    @crew_applicant_form = crew_applicant_forms(:one)
  end

  test "visiting the index" do
    visit crew_applicant_forms_url
    assert_selector "h1", text: "Crew applicant forms"
  end

  test "should create crew applicant form" do
    visit crew_applicant_forms_url
    click_on "New crew applicant form"

    fill_in "Availability", with: @crew_applicant_form.availability
    fill_in "Crew roles", with: @crew_applicant_form.crew_roles
    fill_in "Interest reason", with: @crew_applicant_form.interest_reason
    fill_in "Preferred project", with: @crew_applicant_form.preferred_project
    click_on "Create Crew applicant form"

    assert_text "Crew applicant form was successfully created"
    click_on "Back"
  end

  test "should update Crew applicant form" do
    visit crew_applicant_form_url(@crew_applicant_form)
    click_on "Edit this crew applicant form", match: :first

    fill_in "Availability", with: @crew_applicant_form.availability
    fill_in "Crew roles", with: @crew_applicant_form.crew_roles
    fill_in "Interest reason", with: @crew_applicant_form.interest_reason
    fill_in "Preferred project", with: @crew_applicant_form.preferred_project
    click_on "Update Crew applicant form"

    assert_text "Crew applicant form was successfully updated"
    click_on "Back"
  end

  test "should destroy Crew applicant form" do
    visit crew_applicant_form_url(@crew_applicant_form)
    click_on "Destroy this crew applicant form", match: :first

    assert_text "Crew applicant form was successfully destroyed"
  end
end
