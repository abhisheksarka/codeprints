module Parser
  module Dsl
    class Else
      attr_accessor :if_condition,
                    :block

      def initialize(if_condition, &block)
        @if_condition = if_condition
        @block = proc &block

        if_condition.else_condition = self
      end

      def evaluate_block
        instance_eval &block
      end
    end
  end
end
