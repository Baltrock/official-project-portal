require "test_helper"

class BenOverallProjectFinanceFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ben_overall_project_finance_form = ben_overall_project_finance_forms(:one)
  end

  test "should get index" do
    get ben_overall_project_finance_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_ben_overall_project_finance_form_url
    assert_response :success
  end

  test "should create ben_overall_project_finance_form" do
    assert_difference("BenOverallProjectFinanceForm.count") do
      post ben_overall_project_finance_forms_url, params: { ben_overall_project_finance_form: { currency: @ben_overall_project_finance_form.currency, project_description: @ben_overall_project_finance_form.project_description, project_title: @ben_overall_project_finance_form.project_title, total_investment: @ben_overall_project_finance_form.total_investment, update: @ben_overall_project_finance_form.update } }
    end

    assert_redirected_to ben_overall_project_finance_form_url(BenOverallProjectFinanceForm.last)
  end

  test "should show ben_overall_project_finance_form" do
    get ben_overall_project_finance_form_url(@ben_overall_project_finance_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_ben_overall_project_finance_form_url(@ben_overall_project_finance_form)
    assert_response :success
  end

  test "should update ben_overall_project_finance_form" do
    patch ben_overall_project_finance_form_url(@ben_overall_project_finance_form), params: { ben_overall_project_finance_form: { currency: @ben_overall_project_finance_form.currency, project_description: @ben_overall_project_finance_form.project_description, project_title: @ben_overall_project_finance_form.project_title, total_investment: @ben_overall_project_finance_form.total_investment, update: @ben_overall_project_finance_form.update } }
    assert_redirected_to ben_overall_project_finance_form_url(@ben_overall_project_finance_form)
  end

  test "should destroy ben_overall_project_finance_form" do
    assert_difference("BenOverallProjectFinanceForm.count", -1) do
      delete ben_overall_project_finance_form_url(@ben_overall_project_finance_form)
    end

    assert_redirected_to ben_overall_project_finance_forms_url
  end
end
