class Board

  attr_accessor :players, :snakesandladders, :dice, :position_array

  def initialize(players, snakesandladders, dice)
    @players = players
    @snakesandladders = snakesandladders
    @dice = dice
    @position_array = Array.new(100) {|i| nil}
  end


  def add_snakes_or_ladders()
    # function adds snake or ladder to the board
    # access the array at the starting_point of the snake or ladder1
    # replace the array at that position with the snake or ladder
    for sal in @snakesandladders
      @position_array[sal.starting_point] = sal
    end
  end

  def move_player_token()
  # update each player_token's @position to (@position + dice roll)
    for player_tokens in @players
      player_tokens.position += @dice.random_score()
  # if @position = snake or ladder, update player_token's to snake or ladders ending_point
      if @position_array[player_tokens.position] != nil
        old_player_tokens = player_tokens.position
        player_tokens.position = @position_array[player_tokens.position].ending_point
        puts "Blimey! #{player_tokens.name} moved from #{old_player_tokens} to #{player_tokens.position}! What a change!"
        puts ""
  # if @position = 100, display game winning message
      elsif player_tokens.position >= 100
        puts "#{player_tokens.name} wins!"
        break
  # else, print players new position
      else puts "#{player_tokens.name} is now at #{player_tokens.position}!"
        puts ""
      end
    end
  end

  def game()
    add_snakes_or_ladders()
    move_player_token() until @players[0].position >= 100 || @players[1].position >= 100
  end

end
