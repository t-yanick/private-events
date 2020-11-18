require 'rails_helper'

RSpec.describe Event, type: :feature do
  describe 'index page' do
    it 'displays index headline' do
      visit events_path
      expect(page).to have_content('Events')
    end
    it 'list all events' do
      visit signup_path
      fill_in 'Name', with: 'w'
      fill_in 'Username', with: 'w1'
      click_on 'Create User'
      click_on 'New Event'
      fill_in 'Description', with: 'past event'
      fill_in 'Date', with: Date.yesterday
      click_on 'Create Event'
      visit events_path
      click_on 'New Event'
      fill_in 'Description', with: 'future event'
      fill_in 'Date', with: Date.today
      click_on 'Create Event'
      visit events_path
      expect(page).to have_content('past event')
      expect(page).to have_content('future event')
    end
  end
  context 'create a new event' do
    it 'with valid user and valid content' do
      visit signup_path
      fill_in 'Name', with: 'w'
      fill_in 'Username', with: 'w1'
      click_on 'Create User'
      click_on 'New Event'
      fill_in 'Description', with: 'test event'
      fill_in 'Date', with: Date.today
      click_on 'Create Event'
      expect(page).to have_content('Event was successfully created')
    end
    it 'with valid user' do
      visit signup_path
      fill_in 'Name', with: 'w'
      fill_in 'Username', with: nil
      click_on 'Create User'
      expect(page).to_not have_content('New Event')
    end
    it 'with valid user but no valid content' do
      visit signup_path
      fill_in 'Name', with: 'w'
      fill_in 'Username', with: 'w1'
      click_on 'Create User'
      click_on 'New Event'
      fill_in 'Description', with: nil
      fill_in 'Date', with: Date.today
      click_on 'Create Event'
      expect(page).to have_content("Description can't be blank")
    end
  end
end
