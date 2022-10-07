require "application_system_test_case"

class InvestorSupportFormsTest < ApplicationSystemTestCase
  setup do
    @investor_support_form = investor_support_forms(:one)
  end

  test "visiting the index" do
    visit investor_support_forms_url
    assert_selector "h1", text: "Investor support forms"
  end

  test "should create investor support form" do
    visit investor_support_forms_url
    click_on "New investor support form"

    fill_in "Currency", with: @investor_support_form.currency
    fill_in "Interest reason", with: @investor_support_form.interest_reason
    fill_in "Investment", with: @investor_support_form.investment
    fill_in "Investment history", with: @investor_support_form.investment_history
    click_on "Create Investor support form"

    assert_text "Investor support form was successfully created"
    click_on "Back"
  end

  test "should update Investor support form" do
    visit investor_support_form_url(@investor_support_form)
    click_on "Edit this investor support form", match: :first

    fill_in "Currency", with: @investor_support_form.currency
    fill_in "Interest reason", with: @investor_support_form.interest_reason
    fill_in "Investment", with: @investor_support_form.investment
    fill_in "Investment history", with: @investor_support_form.investment_history
    click_on "Update Investor support form"

    assert_text "Investor support form was successfully updated"
    click_on "Back"
  end

  test "should destroy Investor support form" do
    visit investor_support_form_url(@investor_support_form)
    click_on "Destroy this investor support form", match: :first

    assert_text "Investor support form was successfully destroyed"
  end
end
