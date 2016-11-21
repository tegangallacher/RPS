class Game

  attr_accessor :computer, :player
  
  def initialize(player, computer)
    @player = player
    @computer = rand(1..3)
  end

  # def computer_choice
  #   choice = ["rock", "paper", "scissors"]
  #   computer_rand = rand(3)
  #   computer = choice[computer_rand]
  # end

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
       erb(:paper)
     elsif computer_choice == 'scissors'
      erb(:rock)
    else
      erb(:draw)
    end

    when 'paper'
     if computer_choice == 'rock' 
       erb(:paper)
     elsif computer_choice == 'scissors'
      erb(:scissors)
    else
      erb(:draw)
    end

    when 'scissors'
     if computer_choice == 'rock' 
       erb(:rock)
     elsif computer_choice == 'paper'
      erb(:scissors)
    else
      erb(:draw)
    end

  end
end
end
