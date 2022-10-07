require "application_system_test_case"

class MusicianApplicantFormsTest < ApplicationSystemTestCase
  setup do
    @musician_applicant_form = musician_applicant_forms(:one)
  end

  test "visiting the index" do
    visit musician_applicant_forms_url
    assert_selector "h1", text: "Musician applicant forms"
  end

  test "should create musician applicant form" do
    visit musician_applicant_forms_url
    click_on "New musician applicant form"

    fill_in "Availability", with: @musician_applicant_form.availability
    fill_in "Instrument", with: @musician_applicant_form.instrument
    fill_in "Preferred project", with: @musician_applicant_form.preferred_project
    fill_in "Preferred style", with: @musician_applicant_form.preferred_style
    fill_in "Why interest", with: @musician_applicant_form.why_interest
    click_on "Create Musician applicant form"

    assert_text "Musician applicant form was successfully created"
    click_on "Back"
  end

  test "should update Musician applicant form" do
    visit musician_applicant_form_url(@musician_applicant_form)
    click_on "Edit this musician applicant form", match: :first

    fill_in "Availability", with: @musician_applicant_form.availability
    fill_in "Instrument", with: @musician_applicant_form.instrument
    fill_in "Preferred project", with: @musician_applicant_form.preferred_project
    fill_in "Preferred style", with: @musician_applicant_form.preferred_style
    fill_in "Why interest", with: @musician_applicant_form.why_interest
    click_on "Update Musician applicant form"

    assert_text "Musician applicant form was successfully updated"
    click_on "Back"
  end

  test "should destroy Musician applicant form" do
    visit musician_applicant_form_url(@musician_applicant_form)
    click_on "Destroy this musician applicant form", match: :first

    assert_text "Musician applicant form was successfully destroyed"
  end
end
