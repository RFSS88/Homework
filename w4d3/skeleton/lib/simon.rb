class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while !game_over 
      take_turn
    end
      game_over_message
      reset_game
  end

  def take_turn
   
    unless game_over
      show_sequence
      require_sequence
      round_success_message
    end

    @sequence_length += 1
  end

  def show_sequence

    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25

  end

  def require_sequence
    (0..@sequence_length).times do |i| 
      p "Play"
      guess = gets.chomp

      if guess.downcase != @seq[i]
        game_over = true
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    p "WELL DONE"
  end

  def game_over_message
    p "GAME OVER!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
