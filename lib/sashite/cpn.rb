# Global namespace.
module Sashite
  # Namespace for the library.
  module Cpn
    # Generate the CPN.
    #
    # @param bool     [Boolean] The turn to play.
    # @param indexes  [Array]   The shape of the board.
    # @param squares  [Array]   The board structure.
    # @param pieces   [Array]   The list of pieces in hand.
    def self.generate(bool, indexes, squares, pieces)
      Generate.new(bool, indexes, squares, pieces).to_s
    end

    # Custom error raised with indexes and squares are not synchonized.
    class LengthError < RuntimeError
    end

    # Main class.
    class Generate
      # @param bool     [Boolean] The turn to play.
      # @param indexes  [Array]   The shape of the board.
      # @param squares  [Array]   The board structure.
      # @param pieces   [Array]   The list of pieces in hand.
      def initialize(bool, indexes, squares, pieces)
        fail LengthError unless indexes.inject(:*).to_i.equal?(squares.length)

        @turn           = Turn.new(bool)
        @shape          = Shape.new(*indexes)
        @position       = Position.new(*squares)
        @pieces_in_hand = PiecesInHand.new(*pieces)
      end

      # @return [String] A CPN string.
      def to_s
        [
          @turn.to_s,
          @shape.to_s,
          @position.to_s,
          @pieces_in_hand.to_s
        ].join('--')
      end
    end
  end
end

Dir[File.join File.dirname(__FILE__), 'cpn', '*.rb'].each do |fname|
  require_relative fname
end
