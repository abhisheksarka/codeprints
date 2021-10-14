module Parser
  module Dsl
    class Methods
      include DescProvider
      include ReturnsProvider
      include Util

      attr_accessor :name,
                    :args,
                    :block

      def initialize(name, args = {}, &block)
        @name = name
        @args = format_args(args)
        @block = proc &block
      end

      def evaluate_block
        instance_eval &block
      end
    end
  end
end
