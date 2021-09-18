module Parser
  module Dsl
    module ArgumentsProvider
      extend ActiveSupport::Concern

      included do
      end

      def arguments
        @arguments
      end

      def args(args)
        @arguments = Arguments.new(args)
      end

      class_methods do
      end
    end
  end
end
