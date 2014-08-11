require 'spec_helper.rb'

describe 'User' do

  it 'initializes with a hash' do
    new_user = User.new({})
    expect(new_user).to be_an_instance_of User
  end

  it 'lets you read user name' do
    new_user = User.new({:name => 'Joe'})
    expect(new_user.name).to eq 'Joe'
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(User.all).to eq []
    end
  end
end
