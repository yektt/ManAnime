require 'test_helper'

class AnimesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get animes_new_url
    assert_response :success
  end

  test "should get create" do
    get animes_create_url
    assert_response :success
  end

  test "should get show" do
    get animes_show_url
    assert_response :success
  end

  test "should get edit" do
    get animes_edit_url
    assert_response :success
  end

  test "should get update" do
    get animes_update_url
    assert_response :success
  end

end
