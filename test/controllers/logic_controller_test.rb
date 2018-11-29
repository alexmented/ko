require 'test_helper'

class LogicControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get "/logic/input"
    assert_response 302
  end

  test "should get output" do
    get "/logic/output"
    assert_response 302
  end

end
