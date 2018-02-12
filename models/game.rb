class Game

  def initialize(s1,s2)
    @s1 = s1
    @s2 = s2
  end

  def play
    if (@s1 == "rock" || @s2 == "rock") && (@s1 == "scissors" || @s2 == "scissors")
      return "rock wins"
    elsif (@s1 == "rock" || @s2 == "rock") && (@s1 == "paper" || @s2 == "paper")
      return "paper wins"
    elsif (@s1 == "paper" || @s2 == "paper") && (@s1 == "scissors" || @s2 == "scissors")
      return "scissors wins"
    elsif @s1 == @s2
      return "try again"
    end
  end

end
