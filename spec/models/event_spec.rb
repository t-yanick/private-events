require 'rails_helper'

RSpec.describe Event, type: :model do
  subject do
    Event.create(
      description: 'random',
      date: Date.today,
      creator_id: 1
    )
  end
  it 'should have description present' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'should have valid date' do
    subject.date = nil
    expect(subject).to_not be_valid
  end
end
