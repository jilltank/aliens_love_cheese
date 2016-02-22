require 'test_helper'

class WinnerControllerTest < ActionController::TestCase
  test "should get where_are_you" do
    get :where_are_you
    assert_response :success
  end

  test "should get alien_nachos" do
    get :alien_nachos
    assert_response :success
  end

end
