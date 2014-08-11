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
  puts "M > Mark Yourself Here"
  puts "S > Show all students"
  puts "T > View Attendance"
  puts "X > Exit"
  whitespace
end
