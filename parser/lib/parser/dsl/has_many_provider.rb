module Parser
  module Dsl
    module HasManyProvider
      include Util

      def has_many(args)
        @has_many = format_args(args)
      end

      def provided_has_many
        @has_many
      end
    end
  end
end
