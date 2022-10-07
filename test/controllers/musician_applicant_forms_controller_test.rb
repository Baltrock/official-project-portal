require "test_helper"

class MusicianApplicantFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musician_applicant_form = musician_applicant_forms(:one)
  end

  test "should get index" do
    get musician_applicant_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_musician_applicant_form_url
    assert_response :success
  end

  test "should create musician_applicant_form" do
    assert_difference("MusicianApplicantForm.count") do
      post musician_applicant_forms_url, params: { musician_applicant_form: { availability: @musician_applicant_form.availability, instrument: @musician_applicant_form.instrument, preferred_project: @musician_applicant_form.preferred_project, preferred_style: @musician_applicant_form.preferred_style, why_interest: @musician_applicant_form.why_interest } }
    end

    assert_redirected_to musician_applicant_form_url(MusicianApplicantForm.last)
  end

  test "should show musician_applicant_form" do
    get musician_applicant_form_url(@musician_applicant_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_musician_applicant_form_url(@musician_applicant_form)
    assert_response :success
  end

  test "should update musician_applicant_form" do
    patch musician_applicant_form_url(@musician_applicant_form), params: { musician_applicant_form: { availability: @musician_applicant_form.availability, instrument: @musician_applicant_form.instrument, preferred_project: @musician_applicant_form.preferred_project, preferred_style: @musician_applicant_form.preferred_style, why_interest: @musician_applicant_form.why_interest } }
    assert_redirected_to musician_applicant_form_url(@musician_applicant_form)
  end

  test "should destroy musician_applicant_form" do
    assert_difference("MusicianApplicantForm.count", -1) do
      delete musician_applicant_form_url(@musician_applicant_form)
    end

    assert_redirected_to musician_applicant_forms_url
  end
end
