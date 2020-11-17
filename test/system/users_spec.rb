require_relative '../application_system_test_case'

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test 'creating a User' do
    visit signup_url

    fill_in 'Name', with: @user.name
    fill_in 'Username', with: @user.username
    click_on 'Create User'

    assert_text 'User was successfully created'
    click_on 'Back'
  end
end
