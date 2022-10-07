require "test_helper"

class ManagementApplicantFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @management_applicant_form = management_applicant_forms(:one)
  end

  test "should get index" do
    get management_applicant_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_management_applicant_form_url
    assert_response :success
  end

  test "should create management_applicant_form" do
    assert_difference("ManagementApplicantForm.count") do
      post management_applicant_forms_url, params: { management_applicant_form: { availability: @management_applicant_form.availability, interest_reason: @management_applicant_form.interest_reason, management_roles: @management_applicant_form.management_roles, preferred_project: @management_applicant_form.preferred_project } }
    end

    assert_redirected_to management_applicant_form_url(ManagementApplicantForm.last)
  end

  test "should show management_applicant_form" do
    get management_applicant_form_url(@management_applicant_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_management_applicant_form_url(@management_applicant_form)
    assert_response :success
  end

  test "should update management_applicant_form" do
    patch management_applicant_form_url(@management_applicant_form), params: { management_applicant_form: { availability: @management_applicant_form.availability, interest_reason: @management_applicant_form.interest_reason, management_roles: @management_applicant_form.management_roles, preferred_project: @management_applicant_form.preferred_project } }
    assert_redirected_to management_applicant_form_url(@management_applicant_form)
  end

  test "should destroy management_applicant_form" do
    assert_difference("ManagementApplicantForm.count", -1) do
      delete management_applicant_form_url(@management_applicant_form)
    end

    assert_redirected_to management_applicant_forms_url
  end
end
