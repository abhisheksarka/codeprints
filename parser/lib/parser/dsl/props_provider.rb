module Parser
  module Dsl
    module PropsProvider
      include Util

      def props(args)
        @props = format_args(args)
      end

      def provided_props
        @props
      end
    end
  end
end
