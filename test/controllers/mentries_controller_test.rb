require 'test_helper'

class MentriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentry = mentries(:one)
  end

  test "should get index" do
    get mentries_url
    assert_response :success
  end

  test "should get new" do
    get new_mentry_url
    assert_response :success
  end

  test "should create mentry" do
    assert_difference('Mentry.count') do
      post mentries_url, params: { mentry: { amount: @mentry.amount, date: @mentry.date, note: @mentry.note } }
    end

    assert_redirected_to mentry_url(Mentry.last)
  end

  test "should show mentry" do
    get mentry_url(@mentry)
    assert_response :success
  end

  test "should get edit" do
    get edit_mentry_url(@mentry)
    assert_response :success
  end

  test "should update mentry" do
    patch mentry_url(@mentry), params: { mentry: { amount: @mentry.amount, date: @mentry.date, note: @mentry.note } }
    assert_redirected_to mentry_url(@mentry)
  end

  test "should destroy mentry" do
    assert_difference('Mentry.count', -1) do
      delete mentry_url(@mentry)
    end

    assert_redirected_to mentries_url
  end
end
