require "test_helper"

class BenAvailableBackstageFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ben_available_backstage_form = ben_available_backstage_forms(:one)
  end

  test "should get index" do
    get ben_available_backstage_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_ben_available_backstage_form_url
    assert_response :success
  end

  test "should create ben_available_backstage_form" do
    assert_difference("BenAvailableBackstageForm.count") do
      post ben_available_backstage_forms_url, params: { ben_available_backstage_form: { applicant_window_end: @ben_available_backstage_form.applicant_window_end, applicants_filled: @ben_available_backstage_form.applicants_filled, applicants_needed: @ben_available_backstage_form.applicants_needed, project_involved: @ben_available_backstage_form.project_involved, role_description: @ben_available_backstage_form.role_description, role_title: @ben_available_backstage_form.role_title } }
    end

    assert_redirected_to ben_available_backstage_form_url(BenAvailableBackstageForm.last)
  end

  test "should show ben_available_backstage_form" do
    get ben_available_backstage_form_url(@ben_available_backstage_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_ben_available_backstage_form_url(@ben_available_backstage_form)
    assert_response :success
  end

  test "should update ben_available_backstage_form" do
    patch ben_available_backstage_form_url(@ben_available_backstage_form), params: { ben_available_backstage_form: { applicant_window_end: @ben_available_backstage_form.applicant_window_end, applicants_filled: @ben_available_backstage_form.applicants_filled, applicants_needed: @ben_available_backstage_form.applicants_needed, project_involved: @ben_available_backstage_form.project_involved, role_description: @ben_available_backstage_form.role_description, role_title: @ben_available_backstage_form.role_title } }
    assert_redirected_to ben_available_backstage_form_url(@ben_available_backstage_form)
  end

  test "should destroy ben_available_backstage_form" do
    assert_difference("BenAvailableBackstageForm.count", -1) do
      delete ben_available_backstage_form_url(@ben_available_backstage_form)
    end

    assert_redirected_to ben_available_backstage_forms_url
  end
end
