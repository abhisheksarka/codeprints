module Parser
  module Dsl
    class Method
      include ArgumentsProvider
      include ReturnsProvider
      include IfProvider
      include ElseProvider

      attr_accessor :name,
                    :opts,
                    :block

      def initialize(name, opts = {}, &block)
        @name = name
        @opts = opts
        @block = proc &block
      end

      def evaluate_block
        instance_eval &block
        evaluate_if_blocks
        evaluate_else_blocks
      end
    end
  end
end
