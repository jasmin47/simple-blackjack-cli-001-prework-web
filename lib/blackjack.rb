def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card(num = 1..11)
  rand(num)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  user_input
end

def end_game(final)
  puts "Sorry, you hit #{final}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(final)
  prompt_user
  case get_user_input
  when "s"
    final
  when "h"
    final += deal_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
 until total > 21
  total = hit?(total)
  display_card_total(total)
end
end_game(total)

end
    
