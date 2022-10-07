require "test_helper"

class BenNewProjectFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ben_new_project_form = ben_new_project_forms(:one)
  end

  test "should get index" do
    get ben_new_project_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_ben_new_project_form_url
    assert_response :success
  end

  test "should create ben_new_project_form" do
    assert_difference("BenNewProjectForm.count") do
      post ben_new_project_forms_url, params: { ben_new_project_form: { available_backstage_roles: @ben_new_project_form.available_backstage_roles, available_frontstage_roles: @ben_new_project_form.available_frontstage_roles, project_description: @ben_new_project_form.project_description, project_introduction: @ben_new_project_form.project_introduction, project_title: @ben_new_project_form.project_title } }
    end

    assert_redirected_to ben_new_project_form_url(BenNewProjectForm.last)
  end

  test "should show ben_new_project_form" do
    get ben_new_project_form_url(@ben_new_project_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_ben_new_project_form_url(@ben_new_project_form)
    assert_response :success
  end

  test "should update ben_new_project_form" do
    patch ben_new_project_form_url(@ben_new_project_form), params: { ben_new_project_form: { available_backstage_roles: @ben_new_project_form.available_backstage_roles, available_frontstage_roles: @ben_new_project_form.available_frontstage_roles, project_description: @ben_new_project_form.project_description, project_introduction: @ben_new_project_form.project_introduction, project_title: @ben_new_project_form.project_title } }
    assert_redirected_to ben_new_project_form_url(@ben_new_project_form)
  end

  test "should destroy ben_new_project_form" do
    assert_difference("BenNewProjectForm.count", -1) do
      delete ben_new_project_form_url(@ben_new_project_form)
    end

    assert_redirected_to ben_new_project_forms_url
  end
end
