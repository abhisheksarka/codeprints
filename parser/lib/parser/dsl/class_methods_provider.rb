module Parser
  module Dsl
    module ClassMethodsProvider
      include Util

      def class_methods(&block)
        @class_methods = ClassMethods.new(&block)
      end

      def provided_class_methods
        @class_methods
      end

      def evaluate_class_method_blocks
        return if provided_class_methods.blank?

        provided_class_methods.evaluate_block
        provided_class_methods
          .provided_methods
          .values
          .each(&:evaluate_block)
      end
    end
  end
end
