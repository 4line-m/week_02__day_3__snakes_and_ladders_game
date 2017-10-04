class Board

  attr_accessor :players, :snakesandladders, :dice, :position_array

  def initialize(players, snakesandladders, dice)
    @players = players
    @snakesandladders = snakesandladders
    @dice = dice
    @position_array = Array.new(100) {|i| nil}
  end


  def add_snakes_or_ladders(snake_or_ladder)
    # function adds snake or ladder to the board
    # access the array at the starting_point of the snake or ladder1
    # replace the array at that position with the snake or ladder
    @position_array[snake_or_ladder.starting_point] = snake_or_ladder
  end

  def move_player_token(name)
    # access player_token that matches name
    # update player_token's @position to (@position + dice roll)
    # if @position = snake or ladder, update player_token's to snake or ladders ending_point
    # if @position = 100, display game winning message
    for player_tokens in @players
      if player_tokens.name == name
        result = @dice.random_score()
        player_tokens.position += result
      end
    end
  end

  def turn()
    move_player_token(every player)
  end

end
