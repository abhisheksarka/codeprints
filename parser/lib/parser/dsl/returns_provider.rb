module Parser
  module Dsl
    module ReturnsProvider
      extend ActiveSupport::Concern
      include Util

      included do
      end

      def returns(type)
        @returns = Dsl.validate_type!(type).to_s
      end

      def provided_returns
        @returns
      end

      class_methods do
      end
    end
  end
end
