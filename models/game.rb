class Game
  
  def initialize(player)
    @player = player
    @computer = rand(1..3)
  end

  def computer_choice
    case @computer
    when 1
      return "rock"
    when 2
      return "paper"
    when 3
      return "scissors"
    end
  end

  def play
      case @player
        when 'rock'
          if computer_choice == 'paper' 
           result = 'paper'
         elsif computer_choice == 'scissors'
           result = 'rock'
         else
          result = 'draw'
          end
        when 'paper'
          if computer_choice == 'rock' 
           result = 'paper'
        elsif computer_choice == 'scissors'
          result = 'scissors'
        else
          result = 'draw'
          end
    
        when 'scissors'
          if computer_choice == 'rock' 
            result = 'rock'
          elsif computer_choice == 'paper'
            result = 'scissors'
          else
          result = 'draw'
          end
      end
      return result
    end 
end

