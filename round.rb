class Current_Round
  attr_accessor :num1, :num2, :sum, :user_answer, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = 1
  end

  # Generate 2 random numbers between 1 - 20
  # Add them together
  def random_numbers
    @num1 = rand(20) + 1
    @num2 = rand(20) + 1
    @sum = self.num1 + self.num2
  end

  # Select the current player between player1 or player2
  # Then, change the current player so it is reversed on the next turn
  def get_current_player
    @current_round_player
    if @current_player == 1
      @current_round_player = @player1
      self.current_player = 2
    else
      @current_round_player = @player2
      self.current_player = 1
    end
    return @current_round_player
  end

  # Generate the 2 random numbers and sum
  # Ask the user the question
  # Get the users answer
  def question(player)
    self.random_numbers
    puts "#{player.name}: What does #{self.num1} plus #{self.num2} equal?"
    @user_answer = gets.chomp
  end

  # Check-  is the users answer = sum?
  # True ?
      # "Yes your correct" + show scores + "new turn "
      # "No, you're incorrect" + lose a life + show scores + "new turn"
  def answer(player)
    if @user_answer.to_i == sum
      puts "#{player.name}: YES! You are correct"
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

      puts "---- NEW TURN ----"
    else
      puts "#{player.name}: Seriously? No!"
      player.lose_life
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

      puts "---- NEW TURN ----"
    end
  end
end




