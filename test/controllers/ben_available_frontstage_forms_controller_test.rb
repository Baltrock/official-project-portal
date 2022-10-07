require "test_helper"

class BenAvailableFrontstageFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ben_available_frontstage_form = ben_available_frontstage_forms(:one)
  end

  test "should get index" do
    get ben_available_frontstage_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_ben_available_frontstage_form_url
    assert_response :success
  end

  test "should create ben_available_frontstage_form" do
    assert_difference("BenAvailableFrontstageForm.count") do
      post ben_available_frontstage_forms_url, params: { ben_available_frontstage_form: { applicant_window_end: @ben_available_frontstage_form.applicant_window_end, applicants_filled: @ben_available_frontstage_form.applicants_filled, applicants_needed: @ben_available_frontstage_form.applicants_needed, project_involved: @ben_available_frontstage_form.project_involved, requirements: @ben_available_frontstage_form.requirements, role_description: @ben_available_frontstage_form.role_description, role_title: @ben_available_frontstage_form.role_title } }
    end

    assert_redirected_to ben_available_frontstage_form_url(BenAvailableFrontstageForm.last)
  end

  test "should show ben_available_frontstage_form" do
    get ben_available_frontstage_form_url(@ben_available_frontstage_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_ben_available_frontstage_form_url(@ben_available_frontstage_form)
    assert_response :success
  end

  test "should update ben_available_frontstage_form" do
    patch ben_available_frontstage_form_url(@ben_available_frontstage_form), params: { ben_available_frontstage_form: { applicant_window_end: @ben_available_frontstage_form.applicant_window_end, applicants_filled: @ben_available_frontstage_form.applicants_filled, applicants_needed: @ben_available_frontstage_form.applicants_needed, project_involved: @ben_available_frontstage_form.project_involved, requirements: @ben_available_frontstage_form.requirements, role_description: @ben_available_frontstage_form.role_description, role_title: @ben_available_frontstage_form.role_title } }
    assert_redirected_to ben_available_frontstage_form_url(@ben_available_frontstage_form)
  end

  test "should destroy ben_available_frontstage_form" do
    assert_difference("BenAvailableFrontstageForm.count", -1) do
      delete ben_available_frontstage_form_url(@ben_available_frontstage_form)
    end

    assert_redirected_to ben_available_frontstage_forms_url
  end
end
