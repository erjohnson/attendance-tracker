require './lib/user'
require './lib/timestamp'

def whitespace
  puts "\n"
end

def header
  system 'clear'
  puts "##################"
  puts "ATTENDANCE TRACKER"
  puts "##################"
  puts "I'm Here!"
  whitespace
end

def main_options
  puts "H > Mark Yourself Here"
  puts "S > Show all students"
  puts "T > View Attendance"
  puts "A > Generate sample data"
  puts "X > Exit"
  whitespace
end

def times_list
  TimeStamp.all.each do |result|
    puts result.time + " - " + result.user_name
  end
  whitespace
end

def make_sample_data
  new_user1 = User.login('Bob')
  new_time1 = TimeStamp.new(new_user1.name)
  new_time1.sample_time
  new_time1.save

  main_menu
end
