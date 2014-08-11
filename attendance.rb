require './cli_helper.rb'

def main_menu
  header
  main_options
  case gets.chomp.upcase
  when 'M'
    login
  when 'S'
    show_students
  when 'T'
    show_times
  when 'X'
    exit
  end
end

def login
  puts "Please enter your name:"
  name = gets.chomp
end

main_menu
