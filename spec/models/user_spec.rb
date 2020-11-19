require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.create(name: 'random', username: 'rand1')
  event = Event.create(description: 'new event', date: Date.today)
  user.created_events.push(event)
  it 'should have name present' do
    expect(user).to be_valid
  end

  it 'should have username' do
    expect(user).to be_valid
  end

  it 'should have event in created_events' do
    expect(user.created_events[0]).to eq(event)
  end
end
