require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.create(
      name: 'random',
      username: 'rand1'
    )
  end
  it 'should have name present' do
    expect(subject).to be_valid
  end

  it 'should have username' do
    expect(subject).to be_valid
  end
end
