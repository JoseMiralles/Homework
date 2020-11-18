class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play

  end

  def take_turn
    self.show_sequence
    if self.require_sequence
      round_success_message
      add_random_color
      take_turn
    else
      game_over_message
    end
  end

  def show_sequence
    @seq.each {|c| puts c }
  end

  def require_sequence
    input = gets.chop.split
    input == self.seq
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game

  end
end
