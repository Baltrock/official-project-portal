require "test_helper"

class BenUserUpdateFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ben_user_update_form = ben_user_update_forms(:one)
  end

  test "should get index" do
    get ben_user_update_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_ben_user_update_form_url
    assert_response :success
  end

  test "should create ben_user_update_form" do
    assert_difference("BenUserUpdateForm.count") do
      post ben_user_update_forms_url, params: { ben_user_update_form: { projects_involved: @ben_user_update_form.projects_involved, update_description: @ben_user_update_form.update_description, update_title: @ben_user_update_form.update_title } }
    end

    assert_redirected_to ben_user_update_form_url(BenUserUpdateForm.last)
  end

  test "should show ben_user_update_form" do
    get ben_user_update_form_url(@ben_user_update_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_ben_user_update_form_url(@ben_user_update_form)
    assert_response :success
  end

  test "should update ben_user_update_form" do
    patch ben_user_update_form_url(@ben_user_update_form), params: { ben_user_update_form: { projects_involved: @ben_user_update_form.projects_involved, update_description: @ben_user_update_form.update_description, update_title: @ben_user_update_form.update_title } }
    assert_redirected_to ben_user_update_form_url(@ben_user_update_form)
  end

  test "should destroy ben_user_update_form" do
    assert_difference("BenUserUpdateForm.count", -1) do
      delete ben_user_update_form_url(@ben_user_update_form)
    end

    assert_redirected_to ben_user_update_forms_url
  end
end
