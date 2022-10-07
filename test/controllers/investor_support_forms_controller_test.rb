require "test_helper"

class InvestorSupportFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investor_support_form = investor_support_forms(:one)
  end

  test "should get index" do
    get investor_support_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_investor_support_form_url
    assert_response :success
  end

  test "should create investor_support_form" do
    assert_difference("InvestorSupportForm.count") do
      post investor_support_forms_url, params: { investor_support_form: { currency: @investor_support_form.currency, interest_reason: @investor_support_form.interest_reason, investment: @investor_support_form.investment, investment_history: @investor_support_form.investment_history } }
    end

    assert_redirected_to investor_support_form_url(InvestorSupportForm.last)
  end

  test "should show investor_support_form" do
    get investor_support_form_url(@investor_support_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_investor_support_form_url(@investor_support_form)
    assert_response :success
  end

  test "should update investor_support_form" do
    patch investor_support_form_url(@investor_support_form), params: { investor_support_form: { currency: @investor_support_form.currency, interest_reason: @investor_support_form.interest_reason, investment: @investor_support_form.investment, investment_history: @investor_support_form.investment_history } }
    assert_redirected_to investor_support_form_url(@investor_support_form)
  end

  test "should destroy investor_support_form" do
    assert_difference("InvestorSupportForm.count", -1) do
      delete investor_support_form_url(@investor_support_form)
    end

    assert_redirected_to investor_support_forms_url
  end
end
