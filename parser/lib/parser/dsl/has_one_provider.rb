module Parser
  module Dsl
    module HasOneProvider
      include Util

      def has_one(args)
        @has_one = format_args(args)
      end

      def provided_has_one
        @has_one
      end
    end
  end
end
