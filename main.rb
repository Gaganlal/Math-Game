require_relative 'players'
require_relative 'questions'

print "Please insert Player 1's name: "
player_1_name = gets.chomp
print "Please insert Player 2's name: "
player_2_name = gets.chomp

puts "Alright Lets Get started!!"

current_player = 1

player1 = Players.new(player_1_name)
player2 = Players.new(player_2_name)


while (player1.alive? && player2.alive?) do
  # setting player to player1 or player 2, based off current_player (value)
  if current_player == 1 
    player = player1
  else 
    player = player2
  end
  # create a new question
  question = Questions.new()

  puts "-----------NEW TURN-----------"
  # ask question
  puts "#{player.name}: #{question.text}"
 
  # inputted answer
  answer = gets.chomp.to_i

  if question.correct?(answer)
    puts "Good job, that is correct!"
    # display lives of players
    puts "#{player1.name} : #{player1.lives}/3 lives and #{player2.name} : #{player2.lives}/3 lives"
  else 
    # accessing player lives and deducting 1.
    player.lose_life
    puts "Incorrect! You lost a life my friend!!"
    puts "#{player1.name} : #{player1.lives}/3 lives and #{player2.name} : #{player2.lives}/3 lives"
  end

  # IMPORTANT: here i am resetting current_player value to 0 or 1. That way my if statement on line 20 can work
  current_player = (current_player + 1) % 2
end

if player1.dead?
   puts "-----------------------------"
   puts "#{player2.name} wins with a score of  #{player2.lives}/3 "
elsif player2.dead?
   puts "#{player1.name} wins with a score of #{player1.lives}/3 "
end

puts "----------GAME OVER------------"


