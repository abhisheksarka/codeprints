module Parser
  module Dsl
    class If
      attr_accessor :condition_str,
                    :else_condition,  
                    :block

      def initialize(condition_str, else_condition, &block)
        @condition_str = condition_str
        @else_condition = else_condition
        @block = proc &block
      end

      def evaluate_block
        instance_eval &block
      end
    end
  end
end
