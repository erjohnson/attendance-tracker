class TimeStamp

  @@timestamps = []

  attr_reader :user_name, :time

  def initialize name
    @user_name = name
    @time = Time.now.strftime("%I:%M%p")
  end

  def self.all
    @@timestamps
  end

  def self.clear
    @@timestamps = []
  end
end
