
class Rps
  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def battle()
    play1 = nil
    play2 = nil

    case @player1.downcase
    when "rock"
      play1 = 1
    when "paper"
      play1 = 2
    when "scissors"
      play1 = 3
    else
      play1 = nil
    end

    case @player2.downcase
    when "rock"
      play2 = 1
    when "paper"
      play2 = 2
    when "scissors"
      play2 = 3
    else
      play2 = nil
    end

    if play1 == play2
      return "draw"
    elsif play1 + 1 == play2
      return @player2
    elsif play2 + 1 == play1
      return @player1
    elsif play1 == 1 && play2 == 3
      return @player1
    elsif play2 == 1 && play1 == 3
      return @player2
    else
      return "error"
    end
  end



end
