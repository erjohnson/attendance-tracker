require 'spec_helper.rb'

describe 'TimeStamp' do
  it 'initializes with a user name' do
    new_timestamp = TimeStamp.new('Davey')
    expect(new_timestamp).to be_an_instance_of TimeStamp
  end
end
