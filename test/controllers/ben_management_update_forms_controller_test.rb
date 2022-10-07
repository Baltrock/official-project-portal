require "test_helper"

class BenManagementUpdateFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ben_management_update_form = ben_management_update_forms(:one)
  end

  test "should get index" do
    get ben_management_update_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_ben_management_update_form_url
    assert_response :success
  end

  test "should create ben_management_update_form" do
    assert_difference("BenManagementUpdateForm.count") do
      post ben_management_update_forms_url, params: { ben_management_update_form: { projects_involved: @ben_management_update_form.projects_involved, update_description: @ben_management_update_form.update_description, update_title: @ben_management_update_form.update_title } }
    end

    assert_redirected_to ben_management_update_form_url(BenManagementUpdateForm.last)
  end

  test "should show ben_management_update_form" do
    get ben_management_update_form_url(@ben_management_update_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_ben_management_update_form_url(@ben_management_update_form)
    assert_response :success
  end

  test "should update ben_management_update_form" do
    patch ben_management_update_form_url(@ben_management_update_form), params: { ben_management_update_form: { projects_involved: @ben_management_update_form.projects_involved, update_description: @ben_management_update_form.update_description, update_title: @ben_management_update_form.update_title } }
    assert_redirected_to ben_management_update_form_url(@ben_management_update_form)
  end

  test "should destroy ben_management_update_form" do
    assert_difference("BenManagementUpdateForm.count", -1) do
      delete ben_management_update_form_url(@ben_management_update_form)
    end

    assert_redirected_to ben_management_update_forms_url
  end
end
