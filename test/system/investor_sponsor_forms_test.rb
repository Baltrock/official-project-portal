require "application_system_test_case"

class InvestorSponsorFormsTest < ApplicationSystemTestCase
  setup do
    @investor_sponsor_form = investor_sponsor_forms(:one)
  end

  test "visiting the index" do
    visit investor_sponsor_forms_url
    assert_selector "h1", text: "Investor sponsor forms"
  end

  test "should create investor sponsor form" do
    visit investor_sponsor_forms_url
    click_on "New investor sponsor form"

    fill_in "Currency", with: @investor_sponsor_form.currency
    fill_in "Invest reason", with: @investor_sponsor_form.invest_reason
    fill_in "Investment", with: @investor_sponsor_form.investment
    fill_in "Investment history", with: @investor_sponsor_form.investment_history
    fill_in "Preferred project", with: @investor_sponsor_form.preferred_project
    fill_in "Sponsor reason", with: @investor_sponsor_form.sponsor_reason
    click_on "Create Investor sponsor form"

    assert_text "Investor sponsor form was successfully created"
    click_on "Back"
  end

  test "should update Investor sponsor form" do
    visit investor_sponsor_form_url(@investor_sponsor_form)
    click_on "Edit this investor sponsor form", match: :first

    fill_in "Currency", with: @investor_sponsor_form.currency
    fill_in "Invest reason", with: @investor_sponsor_form.invest_reason
    fill_in "Investment", with: @investor_sponsor_form.investment
    fill_in "Investment history", with: @investor_sponsor_form.investment_history
    fill_in "Preferred project", with: @investor_sponsor_form.preferred_project
    fill_in "Sponsor reason", with: @investor_sponsor_form.sponsor_reason
    click_on "Update Investor sponsor form"

    assert_text "Investor sponsor form was successfully updated"
    click_on "Back"
  end

  test "should destroy Investor sponsor form" do
    visit investor_sponsor_form_url(@investor_sponsor_form)
    click_on "Destroy this investor sponsor form", match: :first

    assert_text "Investor sponsor form was successfully destroyed"
  end
end
