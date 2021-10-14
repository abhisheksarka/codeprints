module Parser
  module Dsl
    module MethodsProvider
      include Util

      def register_method(name, args = {}, &block)
        provided_methods[name] = Methods.new(name, args, &block)
      end

      def provided_methods
        @methods ||= {}.with_indifferent_access
      end

      def evaluate_method_blocks
        provided_methods.values.each(&:evaluate_block)
      end
    end
  end
end
