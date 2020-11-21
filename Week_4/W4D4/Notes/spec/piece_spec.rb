# Rspec examples
require "piece"

describe Piece do

    # Can be accessed from all of the sub-tests
    let(:board) {double("Board", valid_pos?: true)}
    subject(:piece) do
        Piece.new(:black, board, [0,0])
    end

    describe "#initialize" do

        it "takes three arguments: color, board, and pos" do
            expect { piece }.not_to raise_error
        end

        context "with valid arguments" do
            it "correctly sets instance variables with getters (color, board, pos)" do
                expect(piece.color).to eq(:black)
                expect(piece.board).to be(board)
                expect(piece.pos).to eq([0,0])
            end
        end

        context "with invalid arguments" do
            it "riases an error when the color is not white or black" do
                expect { Piece.new(:blueteal, [], [0,0]) }.to raise_error(ArgumentError)
            end
            it "raises an error when the pos is invalid" do
                allow(board).to receive(:valid_pos?).and_return(false)
                expect{ piece }.to raise_error(ArgumentError)
            end
        end

    end

    describe "#pos=" do
        it "correctly sets pos" do
            piece.pos = [1,1]
            expect(piece.pos).to eq([1,1])
        end
    end

    describe "#to_s" do
        it "calls #symbol and returns a string containing that symbol" do
            allow(piece).to receive(:symbol).and_return("K")
            expect(piece).to receive(:symbol)
            expect(piece.to_s).to include("K")
        end
    end

end