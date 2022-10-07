require "test_helper"

class BenKeyProjectFinanceFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ben_key_project_finance_form = ben_key_project_finance_forms(:one)
  end

  test "should get index" do
    get ben_key_project_finance_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_ben_key_project_finance_form_url
    assert_response :success
  end

  test "should create ben_key_project_finance_form" do
    assert_difference("BenKeyProjectFinanceForm.count") do
      post ben_key_project_finance_forms_url, params: { ben_key_project_finance_form: { currency: @ben_key_project_finance_form.currency, project_description: @ben_key_project_finance_form.project_description, project_title: @ben_key_project_finance_form.project_title, total_investment: @ben_key_project_finance_form.total_investment, update: @ben_key_project_finance_form.update } }
    end

    assert_redirected_to ben_key_project_finance_form_url(BenKeyProjectFinanceForm.last)
  end

  test "should show ben_key_project_finance_form" do
    get ben_key_project_finance_form_url(@ben_key_project_finance_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_ben_key_project_finance_form_url(@ben_key_project_finance_form)
    assert_response :success
  end

  test "should update ben_key_project_finance_form" do
    patch ben_key_project_finance_form_url(@ben_key_project_finance_form), params: { ben_key_project_finance_form: { currency: @ben_key_project_finance_form.currency, project_description: @ben_key_project_finance_form.project_description, project_title: @ben_key_project_finance_form.project_title, total_investment: @ben_key_project_finance_form.total_investment, update: @ben_key_project_finance_form.update } }
    assert_redirected_to ben_key_project_finance_form_url(@ben_key_project_finance_form)
  end

  test "should destroy ben_key_project_finance_form" do
    assert_difference("BenKeyProjectFinanceForm.count", -1) do
      delete ben_key_project_finance_form_url(@ben_key_project_finance_form)
    end

    assert_redirected_to ben_key_project_finance_forms_url
  end
end
