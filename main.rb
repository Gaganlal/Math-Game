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


  
# execute ternery operator if statement
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

  puts "#{player.name}: #{question.print}"
 
  # inputted answer
  answer = gets.chomp.to_i

  if answer == question.answer
  puts "Correct!"
  # display lives of players
  puts "#{player1.name} : #{player1.lives}/3 lives and #{player2.name} : #{player2.lives}/3 lives"
  else
    player.lives -= 1
    puts "Incorrect! You lost a life my friend!!"
    puts "#{player1.name} : #{player1.lives}/3 lives and #{player2.name} : #{player2.lives}/3 lives"
  end
  current_player = (current_player + 1) % 2
end

if player1.lives == 0
   puts "---#{player2.name} wins with #{player2.lives}/3 lives"
elsif player2.lives == 0
   puts "---#{player1.name} wins with #{player1.lives}/3 lives"
end

puts "-----------GAME OVER-----------"

