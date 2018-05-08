require 'test_helper'

class LionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get lions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get lions_destroy_url
    assert_response :success
  end

end
