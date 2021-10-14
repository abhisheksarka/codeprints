module Parser
  module Dsl
    module MethodsProvider
      extend ActiveSupport::Concern
      include Util

      included do
      end

      def register_method(name, args = {}, &block)
        @methods ||= {}.with_indifferent_access
        @methods[name] = Methods.new(name, args, &block)
      end

      def provided_methods
        @methods ||= {}.with_indifferent_access
      end

      def evaluate_method_blocks
        provided_methods.values.each(&:evaluate_block)
      end

      class_methods do
      end
    end
  end
end
