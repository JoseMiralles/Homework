class Board
  attr_accessor :cups, :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {[]}
    self.place_stones
  end

  def place_stones
    (0..5).each do |i|
      4.times { @cups[i] << :stone }
    end
    (7..12).each do |i|
      4.times { @cups[i] << :stone }
    end
  end

  def valid_move?(start_pos)
    if (0..13).include?(start_pos) == false
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    rocks = @cups[start_pos].length
    @cups[start_pos] = []

    avoid = current_player_name == name1 ? 13 : 6
    c_pos = (start_pos + 1) % 14
    while rocks >= 1
      if c_pos != avoid
        @cups[c_pos] << :stone
        rocks -= 1
      end
      c_pos = (c_pos + 1) % 14 if rocks >= 1
    end

    self.render
    return next_turn(c_pos, current_player_name)
  end

  def next_turn(ending_cup_idx, current_player_name)
    player_cup = current_player_name == name1 ? 6 : 13
    return :prompt if ending_cup_idx == player_cup
    return :switch if @cups[ending_cup_idx].length == 1 # "If it has one rock, then it was empty before we put the last rock in."
    return ending_cup_idx if @cups[ending_cup_idx].length > 1
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? {|c|c.empty?} || @cups[7..12].all? {|c|c.empty?}
    return false
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    return name1 if @cups[6].length > @cups[13].length
    return name2
  end
end
