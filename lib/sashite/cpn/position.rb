# Global namespace.
module Sashite
  # Namespace for the library.
  module Cpn
    # Position class.
    class Position
      # @param squares [Array] The list of squares.
      def initialize(*squares)
        @squares = squares
      end

      # @!attribute [r] squares
      #
      # @return [Array] The list of squares.
      attr_reader :squares

      # @return [String] A string representation.
      def to_s
        squares.join(',')
      end
    end
  end
end
