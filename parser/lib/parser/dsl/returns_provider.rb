module Parser
  module Dsl
    module ReturnsProvider
      extend ActiveSupport::Concern

      included do
      end

      def returns(type)
        @returns = Dsl.validate_type!(type)
      end

      def provided_returns
        @returns
      end

      class_methods do
      end
    end
  end
end
