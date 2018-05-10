require 'test_helper'

class MaccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maccount = maccounts(:one)
  end

  test "should get index" do
    get maccounts_url
    assert_response :success
  end

  test "should get new" do
    get new_maccount_url
    assert_response :success
  end

  test "should create maccount" do
    assert_difference('Maccount.count') do
      post maccounts_url, params: { maccount: { name: @maccount.name } }
    end

    assert_redirected_to maccount_url(Maccount.last)
  end

  test "should show maccount" do
    get maccount_url(@maccount)
    assert_response :success
  end

  test "should get edit" do
    get edit_maccount_url(@maccount)
    assert_response :success
  end

  test "should update maccount" do
    patch maccount_url(@maccount), params: { maccount: { name: @maccount.name } }
    assert_redirected_to maccount_url(@maccount)
  end

  test "should destroy maccount" do
    assert_difference('Maccount.count', -1) do
      delete maccount_url(@maccount)
    end

    assert_redirected_to maccounts_url
  end
end
