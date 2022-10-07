require "test_helper"

class BenSelectionFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ben_selection_form = ben_selection_forms(:one)
  end

  test "should get index" do
    get ben_selection_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_ben_selection_form_url
    assert_response :success
  end

  test "should create ben_selection_form" do
    assert_difference("BenSelectionForm.count") do
      post ben_selection_forms_url, params: { ben_selection_form: { applicant_selection: @ben_selection_form.applicant_selection, project_involved: @ben_selection_form.project_involved, role_involved: @ben_selection_form.role_involved } }
    end

    assert_redirected_to ben_selection_form_url(BenSelectionForm.last)
  end

  test "should show ben_selection_form" do
    get ben_selection_form_url(@ben_selection_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_ben_selection_form_url(@ben_selection_form)
    assert_response :success
  end

  test "should update ben_selection_form" do
    patch ben_selection_form_url(@ben_selection_form), params: { ben_selection_form: { applicant_selection: @ben_selection_form.applicant_selection, project_involved: @ben_selection_form.project_involved, role_involved: @ben_selection_form.role_involved } }
    assert_redirected_to ben_selection_form_url(@ben_selection_form)
  end

  test "should destroy ben_selection_form" do
    assert_difference("BenSelectionForm.count", -1) do
      delete ben_selection_form_url(@ben_selection_form)
    end

    assert_redirected_to ben_selection_forms_url
  end
end
