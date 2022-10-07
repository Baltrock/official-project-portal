require "test_helper"

class ArtistApplicantFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_applicant_form = artist_applicant_forms(:one)
  end

  test "should get index" do
    get artist_applicant_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_applicant_form_url
    assert_response :success
  end

  test "should create artist_applicant_form" do
    assert_difference("ArtistApplicantForm.count") do
      post artist_applicant_forms_url, params: { artist_applicant_form: { art_form: @artist_applicant_form.art_form, art_style: @artist_applicant_form.art_style, availability: @artist_applicant_form.availability, interest_reason: @artist_applicant_form.interest_reason, preferred_project: @artist_applicant_form.preferred_project } }
    end

    assert_redirected_to artist_applicant_form_url(ArtistApplicantForm.last)
  end

  test "should show artist_applicant_form" do
    get artist_applicant_form_url(@artist_applicant_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_applicant_form_url(@artist_applicant_form)
    assert_response :success
  end

  test "should update artist_applicant_form" do
    patch artist_applicant_form_url(@artist_applicant_form), params: { artist_applicant_form: { art_form: @artist_applicant_form.art_form, art_style: @artist_applicant_form.art_style, availability: @artist_applicant_form.availability, interest_reason: @artist_applicant_form.interest_reason, preferred_project: @artist_applicant_form.preferred_project } }
    assert_redirected_to artist_applicant_form_url(@artist_applicant_form)
  end

  test "should destroy artist_applicant_form" do
    assert_difference("ArtistApplicantForm.count", -1) do
      delete artist_applicant_form_url(@artist_applicant_form)
    end

    assert_redirected_to artist_applicant_forms_url
  end
end
