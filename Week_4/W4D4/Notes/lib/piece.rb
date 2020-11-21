class Piece

    attr_reader :color, :board
    attr_accessor :pos

    def initialize(color, board, pos)
        raise ArgumentError if ![:black, :white].include?(color)
        raise ArgumentError if board.valid_pos?(pos) == false

        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        self.symbol
    end

end