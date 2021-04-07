require "test_helper"

class MethodControllerTest < ActionDispatch::IntegrationTest
  test "should get method1" do
    get method_method1_url
    assert_response :success
  end

  test "should get method2" do
    get method_method2_url
    assert_response :success
  end

  test "should get method3" do
    get method_method3_url
    assert_response :success
  end
end
