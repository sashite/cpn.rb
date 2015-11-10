# Global namespace.
module Sashite
  # Namespace for the library.
  module Cpn
    # Shape class.
    class Shape
      # @param indexes [Array] The list of indexes.
      def initialize(*indexes)
        @indexes = indexes
      end

      # @!attribute [r] indexes
      #
      # @return [Array] The list of indexes.
      attr_reader :indexes

      # @return [String] A string representation.
      def to_s
        indexes.join(',')
      end
    end
  end
end
