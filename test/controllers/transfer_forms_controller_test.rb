require "test_helper"

class TransferFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transfer_form = transfer_forms(:one)
  end

  test "should get index" do
    get transfer_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_transfer_form_url
    assert_response :success
  end

  test "should create transfer_form" do
    assert_difference("TransferForm.count") do
      post transfer_forms_url, params: { transfer_form: { outcome_expectation: @transfer_form.outcome_expectation, project_involved: @transfer_form.project_involved, transfer_from: @transfer_form.transfer_from, transfer_reason: @transfer_form.transfer_reason, transfer_to: @transfer_form.transfer_to } }
    end

    assert_redirected_to transfer_form_url(TransferForm.last)
  end

  test "should show transfer_form" do
    get transfer_form_url(@transfer_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_transfer_form_url(@transfer_form)
    assert_response :success
  end

  test "should update transfer_form" do
    patch transfer_form_url(@transfer_form), params: { transfer_form: { outcome_expectation: @transfer_form.outcome_expectation, project_involved: @transfer_form.project_involved, transfer_from: @transfer_form.transfer_from, transfer_reason: @transfer_form.transfer_reason, transfer_to: @transfer_form.transfer_to } }
    assert_redirected_to transfer_form_url(@transfer_form)
  end

  test "should destroy transfer_form" do
    assert_difference("TransferForm.count", -1) do
      delete transfer_form_url(@transfer_form)
    end

    assert_redirected_to transfer_forms_url
  end
end
