require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should get new' do
    get new_user_url
    assert_response :success
  end

  test 'should create user' do
    assert_difference('User.count') do
      post users_url, params: { user: { name: @user.name, username: @user.username } }
    end

    assert_redirected_to root_url
  end

  test 'should show user' do
    get user_url(@user)
    assert_response :success
  end
end
