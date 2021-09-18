module Parser
  module Dsl
    class Returns
      attr_accessor :type

      def initialize(type)
        @type = type
      end
    end
  end
end
