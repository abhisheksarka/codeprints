module Parser
  module Dsl
    class ClassMethods
      include MethodsProvider
      include Util

      attr_accessor :block

      def initialize(&block)
        @block = proc &block
      end

      def evaluate_block
        instance_eval &block
      end

      def method_missing(name, *args, &block)
        register_method(name, args[0], &block)
      end
    end
  end
end
