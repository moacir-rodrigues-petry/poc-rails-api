require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(name: 'John Doe', email: 'john@example.com')
    expect(user).to be_valid
  end

  it 'is valid with valid attributes even without one' do
    user = User.new(name: 'Mary Doe')
    expect(user).to be_valid
  end

  it 'is valid with valid attributes even without one' do
    user = User.new(email: 'john@example.com')
    expect(user).to be_valid
  end

  it 'is valid with valid attributes even without any field' do
    user = User.new
    expect(user).to be_valid
  end
end
