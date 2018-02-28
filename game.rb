require './players'
require './question_generator'

class Game

def initialize
  new_game

  # todo: while loop to run the game, what is the condition going to look like?
end

def new_game
  puts "Welcome to the Game"
  puts "Player 1 please input your name: "
  @player1 = Player.new (gets.chomp)
  puts "Player 2 please input your name: "
  @player2 = Player.new (gets.chomp)
  puts '------------------------------------------'
  puts "#{@player1.name}, you have #{@player1.life} lives remaining"
  puts '------------------------------------------'
  puts "#{@player2.name}, you have #{@player2.life} lives remaining"
  @current_player = @player1
  new_turn
end

def new_turn #(player)
  @question = Question.new
  puts '------------------------------------------'
  puts "#{@current_player.name} it is your turn."
  puts '------------------------------------------'
  @question.render_question
  answer_evaluator(@question)
end

def answer_evaluator(question)
  puts question.answer
  puts "Please enter your answer: "
  user_answer = gets.chomp.to_i
  puts user_answer
  if user_answer == question.answer
    puts "Sweet!"
  elsif user_answer != question.answer
    @current_player.lose_life
    puts "Serliously? Your math skills need help"
  end
  puts "#{@current_player.name}, you have #{@current_player.life} lives remaining"
  does_game_continue
end

def does_game_continue
  if @current_player.life > 0
    change_players
    new_turn
  elsif @current_player.life = 0
    puts "We will send you to math school!"
    puts "________GAME OVER_______________"
  end
end

def change_players
  if @current_player == @player1
    @current_player = @player2
  else
    @current_player = @player1
  end
end

end


# game = Game.new

# - how get the player and answer variables available?
