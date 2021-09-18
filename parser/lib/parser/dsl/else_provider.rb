module Parser
  module Dsl
    module ElseProvider
      include IfProvider
      extend ActiveSupport::Concern

      def elses
        @elses ||= []
      end

      def _else_(&block)
        raise Error::ElseWithoutIf if last_if_without_else.blank?

        elses << Else.new(last_if_without_else, &block)
      end

      def evaluate_else_blocks
        elses.each(&:evaluate_block)
      end
    end
  end
end
