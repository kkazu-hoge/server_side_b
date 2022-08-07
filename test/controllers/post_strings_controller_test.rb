require "test_helper"

class PostStringsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_strings_index_url
    assert_response :success
  end

  test "should get new" do
    get post_strings_new_url
    assert_response :success
  end

  test "should get create" do
    get post_strings_create_url
    assert_response :success
  end
end
