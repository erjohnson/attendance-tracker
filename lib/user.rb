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
end
