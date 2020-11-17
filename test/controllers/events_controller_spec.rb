require_relative '../test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test 'should get index' do
    get events_url
    assert_response :success
  end

  test 'should get new' do
    get new_event_url
    assert_response :success
  end

  test 'should create event' do
    assert_difference('Event.count') do
      post events_url, params: \
      { event: { date: @event.date, description: @event.description, creator_id: @event.creator_id } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test 'should show event' do
    get event_url(@event)
    assert_response :success
  end
end
