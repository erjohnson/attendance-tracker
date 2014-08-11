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
  header
  puts "Please enter your name:"
  name = gets.chomp
  puts "What lesson # are you on?"
  num = gets.chomp.to_i

end

main_menu
