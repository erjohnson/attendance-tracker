class User

  attr_reader :name

  @@users = []

  def initialize attributes
    @name = attributes[:name]
    @current_lesson = attributes[:current_lesson]
  end

  def self.all
    @@users
  end

  def self.clear
    @@users = []
  end

  def save
    @@users << self
  end

  def remove
    @@users.delete(self)
  end
end
