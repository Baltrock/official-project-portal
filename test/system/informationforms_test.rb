require "application_system_test_case"

class InformationformsTest < ApplicationSystemTestCase
  setup do
    @informationform = informationforms(:one)
  end

  test "visiting the index" do
    visit informationforms_url
    assert_selector "h1", text: "Informationforms"
  end

  test "should create informationform" do
    visit informationforms_url
    click_on "New informationform"

    fill_in "Age", with: @informationform.age
    fill_in "Bio", with: @informationform.bio
    fill_in "City", with: @informationform.city
    fill_in "Country", with: @informationform.country
    fill_in "First name", with: @informationform.first_name
    fill_in "Introduction", with: @informationform.introduction
    fill_in "Last name", with: @informationform.last_name
    fill_in "Nationality", with: @informationform.nation
    fill_in "Phone number", with: @informationform.phone_number
    fill_in "Social media", with: @informationform.social_media
    click_on "Create Informationform"

    assert_text "Informationform was successfully created"
    click_on "Back"
  end

  test "should update Informationform" do
    visit informationform_url(@informationform)
    click_on "Edit this informationform", match: :first

    fill_in "Age", with: @informationform.age
    fill_in "Bio", with: @informationform.bio
    fill_in "City", with: @informationform.city
    fill_in "Country", with: @informationform.country
    fill_in "First name", with: @informationform.first_name
    fill_in "Introduction", with: @informationform.introduction
    fill_in "Last name", with: @informationform.last_name
    fill_in "Nationality", with: @informationform.nation
    fill_in "Phone number", with: @informationform.phone_number
    fill_in "Social media", with: @informationform.social_media
    click_on "Update Informationform"

    assert_text "Informationform was successfully updated"
    click_on "Back"
  end

  test "should destroy Informationform" do
    visit informationform_url(@informationform)
    click_on "Destroy this informationform", match: :first

    assert_text "Informationform was successfully destroyed"
  end
end
