module Parser
  module Dsl
    module PropsProvider
      extend ActiveSupport::Concern
      include Util

      included do
      end

      def props(args)
        @props = format_args(args)
      end

      def provided_props
        @props
      end

      class_methods do
      end
    end
  end
end
