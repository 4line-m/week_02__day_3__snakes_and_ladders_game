class PlayerTokens

  attr_accessor :position
  attr_reader :name
  def initialize(name)
    @name = name
    @position = 0
  end

end
