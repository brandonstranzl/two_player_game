
class Player
  attr_accessor :name, :life

  def initialize(name)
    self.name = name
    self.life = 3
  end

  def lose_life
    self.life -= 1
  end

  # def info
  #   "this is the name #{name}"
  # end

end





# puts "Welcome to the Game"
# puts "Player 1 please input your name: "
# player1 = Player.new (gets.chomp)
# puts player1
# puts player1.info
# puts "Player 2 please input your name: "
# player2 = Player.new (gets.chomp)

# puts "#{player1.name}, you have #{player1.life} lives"
# puts "#{player2.name}, you have #{player2.life} lives"

# player1.lose_life
# puts "#{player1.name}, you have #{player1.life} lives remaining"
