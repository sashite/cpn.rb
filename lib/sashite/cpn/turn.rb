# Global namespace.
module Sashite
  # Namespace for the library.
  module Cpn
    # Turn class.
    class Turn
      # @param b [Boolean] The turn to play (topside: true, bottomside: false).
      def initialize(b)
        @b = b
      end

      # @return [Boolean] Returns false when the turn to play is for bottom.
      def turn_to_topside?
        @b
      end

      # @return [String] A string representation.
      def to_s
        if turn_to_topside?
          't'
        else
          'B'
        end
      end
    end
  end
end
