require 'application_system_test_case'

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
    @user = users(:two)
  end

  test 'visiting the index' do
    visit events_url
    assert_selector 'h1', text: 'Events'
  end

  test 'creating a Event' do
    visit events_url
    click_on 'New Event'

    fill_in 'Date', with: @event.date
    fill_in 'Description', with: @event.description
    click_on 'Create Event'

    assert_text 'Event was successfully created'
    click_on 'Back'
  end
end
