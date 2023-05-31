require './player'
require './round'

class Game
  def initialize
    player1 = Player.new('Player 1')
    player2 = Player.new('Player 2')
    round = Current_Round.new(player1, player2)

    # Check - both players have lives above 0
    # True ? continue loop : end
    while player1.lives != 0 && player2.lives != 0
      this_player = round.get_current_player
      round.question(this_player)
      round.answer(this_player)
    end

    # Once the loop ends, check which player lost by reaching 0 lives
    # Print a msg to say who the winner is, with winner's name and final score
    # Say game over & goodbye
    if player1.lives == 0
      puts "#{player2.name} wins with a score of #{player2.lives}/3"
    else
      puts "#{player1.name} wins with a score of #{player1.lives}/3"
    end

    puts "--- GAME OVER ----"
    puts "Goodbye!"
  end
end

game1 = Game.new


