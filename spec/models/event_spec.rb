require 'rails_helper'

RSpec.describe Event, type: :model do
  user = User.create(name: 'random', username: 'rand1')
  event = Event.create(description: 'new event', date: Date.today, creator_id: user.id)

  it 'belong to creator' do
    expect(event.creator).to eq(user)
  end

  it 'should have description and date present' do
    expect(event).to be_valid
  end
end
