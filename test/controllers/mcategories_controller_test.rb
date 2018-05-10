require 'test_helper'

class McategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mcategory = mcategories(:one)
  end

  test "should get index" do
    get mcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_mcategory_url
    assert_response :success
  end

  test "should create mcategory" do
    assert_difference('Mcategory.count') do
      post mcategories_url, params: { mcategory: { name: @mcategory.name } }
    end

    assert_redirected_to mcategory_url(Mcategory.last)
  end

  test "should show mcategory" do
    get mcategory_url(@mcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_mcategory_url(@mcategory)
    assert_response :success
  end

  test "should update mcategory" do
    patch mcategory_url(@mcategory), params: { mcategory: { name: @mcategory.name } }
    assert_redirected_to mcategory_url(@mcategory)
  end

  test "should destroy mcategory" do
    assert_difference('Mcategory.count', -1) do
      delete mcategory_url(@mcategory)
    end

    assert_redirected_to mcategories_url
  end
end
