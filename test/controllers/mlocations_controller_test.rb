require 'test_helper'

class MlocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mlocation = mlocations(:one)
  end

  test "should get index" do
    get mlocations_url
    assert_response :success
  end

  test "should get new" do
    get new_mlocation_url
    assert_response :success
  end

  test "should create mlocation" do
    assert_difference('Mlocation.count') do
      post mlocations_url, params: { mlocation: { name: @mlocation.name } }
    end

    assert_redirected_to mlocation_url(Mlocation.last)
  end

  test "should show mlocation" do
    get mlocation_url(@mlocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_mlocation_url(@mlocation)
    assert_response :success
  end

  test "should update mlocation" do
    patch mlocation_url(@mlocation), params: { mlocation: { name: @mlocation.name } }
    assert_redirected_to mlocation_url(@mlocation)
  end

  test "should destroy mlocation" do
    assert_difference('Mlocation.count', -1) do
      delete mlocation_url(@mlocation)
    end

    assert_redirected_to mlocations_url
  end
end
