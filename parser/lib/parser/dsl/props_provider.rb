module Parser
  module Dsl
    module PropsProvider
      extend ActiveSupport::Concern

      included do
      end

      def props(prps)
        @props = prps
      end

      def provided_props
        @props
      end

      class_methods do
      end
    end
  end
end
