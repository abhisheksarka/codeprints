module Parser
  module Dsl
    class Methods
      include DescProvider
      include ReturnsProvider

      attr_accessor :name,
                    :args,
                    :block

      def initialize(name, args = {}, &block)
        @name = name
        @args = Args.new(args)
        @block = proc &block
      end

      def evaluate_block
        instance_eval &block
      end
    end
  end
end
