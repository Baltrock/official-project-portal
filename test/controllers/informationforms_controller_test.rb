require "test_helper"

class InformationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @informationform = informationforms(:one)
  end

  test "should get index" do
    get informationforms_url
    assert_response :success
  end

  test "should get new" do
    get new_informationform_url
    assert_response :success
  end

  test "should create informationform" do
    assert_difference("Informationform.count") do
      post informationforms_url, params: { informationform: { age: @informationform.age, bio: @informationform.bio, city: @informationform.city, country: @informationform.country, first_name: @informationform.first_name, introduction: @informationform.introduction, last_name: @informationform.last_name, nation: @informationform.nation, phone_number: @informationform.phone_number, social_media: @informationform.social_media } }
    end

    assert_redirected_to informationform_url(Informationform.last)
  end

  test "should show informationform" do
    get informationform_url(@informationform)
    assert_response :success
  end

  test "should get edit" do
    get edit_informationform_url(@informationform)
    assert_response :success
  end

  test "should update informationform" do
    patch informationform_url(@informationform), params: { informationform: { age: @informationform.age, bio: @informationform.bio, city: @informationform.city, country: @informationform.country, first_name: @informationform.first_name, introduction: @informationform.introduction, last_name: @informationform.last_name, nation: @informationform.nation, phone_number: @informationform.phone_number, social_media: @informationform.social_media } }
    assert_redirected_to informationform_url(@informationform)
  end

  test "should destroy informationform" do
    assert_difference("Informationform.count", -1) do
      delete informationform_url(@informationform)
    end

    assert_redirected_to informationforms_url
  end
end
