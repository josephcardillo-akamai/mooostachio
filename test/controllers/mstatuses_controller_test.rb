require 'test_helper'

class MstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mstatus = mstatuses(:one)
  end

  test "should get index" do
    get mstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_mstatus_url
    assert_response :success
  end

  test "should create mstatus" do
    assert_difference('Mstatus.count') do
      post mstatuses_url, params: { mstatus: { name: @mstatus.name } }
    end

    assert_redirected_to mstatus_url(Mstatus.last)
  end

  test "should show mstatus" do
    get mstatus_url(@mstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_mstatus_url(@mstatus)
    assert_response :success
  end

  test "should update mstatus" do
    patch mstatus_url(@mstatus), params: { mstatus: { name: @mstatus.name } }
    assert_redirected_to mstatus_url(@mstatus)
  end

  test "should destroy mstatus" do
    assert_difference('Mstatus.count', -1) do
      delete mstatus_url(@mstatus)
    end

    assert_redirected_to mstatuses_url
  end
end
