require "test_helper"

class InvestorSponsorFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investor_sponsor_form = investor_sponsor_forms(:one)
  end

  test "should get index" do
    get investor_sponsor_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_investor_sponsor_form_url
    assert_response :success
  end

  test "should create investor_sponsor_form" do
    assert_difference("InvestorSponsorForm.count") do
      post investor_sponsor_forms_url, params: { investor_sponsor_form: { currency: @investor_sponsor_form.currency, invest_reason: @investor_sponsor_form.invest_reason, investment: @investor_sponsor_form.investment, investment_history: @investor_sponsor_form.investment_history, preferred_project: @investor_sponsor_form.preferred_project, sponsor_reason: @investor_sponsor_form.sponsor_reason } }
    end

    assert_redirected_to investor_sponsor_form_url(InvestorSponsorForm.last)
  end

  test "should show investor_sponsor_form" do
    get investor_sponsor_form_url(@investor_sponsor_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_investor_sponsor_form_url(@investor_sponsor_form)
    assert_response :success
  end

  test "should update investor_sponsor_form" do
    patch investor_sponsor_form_url(@investor_sponsor_form), params: { investor_sponsor_form: { currency: @investor_sponsor_form.currency, invest_reason: @investor_sponsor_form.invest_reason, investment: @investor_sponsor_form.investment, investment_history: @investor_sponsor_form.investment_history, preferred_project: @investor_sponsor_form.preferred_project, sponsor_reason: @investor_sponsor_form.sponsor_reason } }
    assert_redirected_to investor_sponsor_form_url(@investor_sponsor_form)
  end

  test "should destroy investor_sponsor_form" do
    assert_difference("InvestorSponsorForm.count", -1) do
      delete investor_sponsor_form_url(@investor_sponsor_form)
    end

    assert_redirected_to investor_sponsor_forms_url
  end
end
