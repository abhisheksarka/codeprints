module Parser
  module Dsl
    module IfProvider
      extend ActiveSupport::Concern

      included do
      end

      def ifs
        @ifs ||= []
      end

      def last_if_without_else
        ifs.select { |i| i.else_condition.blank? }.last
      end

      def _if_(condition_str, &block)
        ifs << If.new(condition_str, nil, &block)
      end

      def evaluate_if_blocks
        ifs.each(&:evaluate_block)
      end

      class_methods do
      end
    end
  end
end
