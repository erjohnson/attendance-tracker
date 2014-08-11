class User

  attr_reader :name, :current_lesson

  @@users = []

  def initialize attributes
    @name = attributes[:name]
    @current_lesson = attributes[:lesson]
  end

  def self.all
    @@users
  end

  def self.clear
    @@users = []
  end

  def self.find name
    User.all.detect { |x| x.name == name }
  end

  def save
    @@users << self
  end

  def remove
    User.all.delete(self)
  end
end
