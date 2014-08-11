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

    it 'lists all users' do
      new_user1 = User.new({:name => 'Joe'})
      new_user1.save
      new_user2 = User.new({:name => 'Martha'})
      new_user2.save
      expect(User.all).to eq [new_user1, new_user2]
    end
  end

  describe 'save' do
    it 'saves a user' do
      new_user = User.new({})
      new_user.save
      expect(User.all[0]).to eq new_user
    end
  end
end
