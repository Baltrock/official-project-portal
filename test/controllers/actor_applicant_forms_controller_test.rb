require "test_helper"

class ActorApplicantFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actor_applicant_form = actor_applicant_forms(:one)
  end

  test "should get index" do
    get actor_applicant_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_actor_applicant_form_url
    assert_response :success
  end

  test "should create actor_applicant_form" do
    assert_difference("ActorApplicantForm.count") do
      post actor_applicant_forms_url, params: { actor_applicant_form: { availability: @actor_applicant_form.availability, interest_reason: @actor_applicant_form.interest_reason, preferred_project: @actor_applicant_form.preferred_project, preferred_roles: @actor_applicant_form.preferred_roles } }
    end

    assert_redirected_to actor_applicant_form_url(ActorApplicantForm.last)
  end

  test "should show actor_applicant_form" do
    get actor_applicant_form_url(@actor_applicant_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_actor_applicant_form_url(@actor_applicant_form)
    assert_response :success
  end

  test "should update actor_applicant_form" do
    patch actor_applicant_form_url(@actor_applicant_form), params: { actor_applicant_form: { availability: @actor_applicant_form.availability, interest_reason: @actor_applicant_form.interest_reason, preferred_project: @actor_applicant_form.preferred_project, preferred_roles: @actor_applicant_form.preferred_roles } }
    assert_redirected_to actor_applicant_form_url(@actor_applicant_form)
  end

  test "should destroy actor_applicant_form" do
    assert_difference("ActorApplicantForm.count", -1) do
      delete actor_applicant_form_url(@actor_applicant_form)
    end

    assert_redirected_to actor_applicant_forms_url
  end
end
