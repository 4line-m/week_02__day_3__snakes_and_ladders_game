class Dice

  attr_accessor :possible_scores, :current_score
  def initialize(max_score)
    @possible_scores = Array.new(max_score) {|i| i+1}
    @current_score = 0
  end

  def random_score()
    @current_score = @possible_scores.sample()
  end

end
