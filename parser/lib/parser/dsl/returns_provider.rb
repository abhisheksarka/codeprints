module Parser
  module Dsl
    module ReturnsProvider
      include Util

      def returns(type)
        @returns = Dsl.validate_type!(type).to_s
      end

      def provided_returns
        @returns
      end
    end
  end
end
