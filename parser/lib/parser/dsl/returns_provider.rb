module Parser
  module Dsl
    module ReturnsProvider
      extend ActiveSupport::Concern

      included do
      end

      def return_type
        @returns
      end

      def returns(type)
        @returns = Returns.new(type)
      end

      class_methods do
      end
    end
  end
end
