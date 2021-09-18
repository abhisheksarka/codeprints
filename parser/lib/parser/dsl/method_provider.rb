module Parser
  module Dsl
    module MethodProvider
      extend ActiveSupport::Concern

      included do
      end

      def _methods
        @_methods ||= {}.with_indifferent_access
      end

      def _method(method_name, opts = {}, &block)
        _methods[method_name] = Method.new(method_name, opts, &block)
      end

      def evaluate_method_blocks
        _methods.values.each(&:evaluate_block)
      end

      class_methods do
      end
    end
  end
end
