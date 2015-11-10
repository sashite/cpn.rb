# Global namespace.
module Sashite
  # Namespace for the library.
  module Cpn
    # Pieces in hand class.
    class PiecesInHand
      # @param pieces [Array] The list of pieces in hand.
      def initialize(*pieces)
        @pieces = pieces.map(&:to_s).sort
      end

      # @!attribute [r] pieces
      #
      # @return [Array] The list of pieces in hand.
      attr_reader :pieces

      # @return [String] A string representation.
      def to_s
        pieces.join(',')
      end
    end
  end
end
