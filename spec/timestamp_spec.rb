require 'spec_helper.rb'

describe 'TimeStamp' do
  it 'initializes with a user name' do
    new_timestamp = TimeStamp.new('Davey')
    expect(new_timestamp).to be_an_instance_of TimeStamp
  end

  it 'lets you read the user name' do
    new_timestamp = TimeStamp.new('Rhonda')
    expect(new_timestamp.user_name).to eq 'Rhonda'
  end

  it 'lets you read the recorded time' do
    new_timestamp = TimeStamp.new('Rhonda')
    expect(new_timestamp.time).to eq Time.now.strftime("%I:%M%p")
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(TimeStamp.all).to eq []
    end
  end
end
