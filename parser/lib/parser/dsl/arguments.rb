module Parser
  module Dsl
    class Arguments
      attr_accessor :args

      def initialize(args = {})
        @args = args
      end
    end
  end
end
