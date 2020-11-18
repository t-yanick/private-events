require 'rails_helper'

RSpec.describe Attendance, type: :model do
  user = User.create(name: 'random', username: 'rand1')
  event = Event.create(description: 'new event', date: Date.today, creator_id: user.id)
  event.attendees.push(user)
  user.attended_events.push(event)

  it 'should have the passed user as attendee' do
    expect(event.attendees[0]).to eq(user)
  end

  it 'should have event in attended events' do
    expect(user.attended_events[0]).to eq(event)
  end
end
