require 'rails_helper'

RSpec.describe User, type: :feature do
  describe 'new user' do
    it 'require all fields for a new user' do
      visit signup_path
      fill_in 'Name', with: nil
      fill_in 'Username', with: nil
      click_on 'Create User'
      expect(page).to have_content("Name can't be blank")
      expect(page).to have_content("Username can't be blank")
    end
    it 'create a new user' do
      visit signup_path
      fill_in 'Name', with: 'w'
      fill_in 'Username', with: 'w1'
      click_on 'Create User'
      expect(page).to have_content('User was successfully created.')
    end
  end
end
