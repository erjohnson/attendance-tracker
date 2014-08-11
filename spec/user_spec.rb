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

  it 'lets you read the current lesson' do
    new_user = User.new({:name => 'Joe', :lesson => 1})
    expect(new_user.current_lesson).to eq 1
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

  describe '.find' do
    it 'finds a user by name' do
      new_user1 = User.new({:name => 'Joe'})
      new_user1.save
      new_user2 = User.new({:name => 'Martha'})
      new_user2.save
      expect(User.find("Joe")).to eq new_user1
    end
  end

  describe 'save' do
    it 'saves a user' do
      new_user = User.new({})
      new_user.save
      expect(User.all[0]).to eq new_user
    end
  end

  describe 'remove' do
    it 'deletes a user' do
      new_user = User.new({})
      new_user.save
      new_user.remove
      expect(User.all).to eq []
    end
  end
end
