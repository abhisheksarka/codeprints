module Parser
  module Dsl
    module HasOneProvider
      extend ActiveSupport::Concern
      include Util

      included do
      end

      def has_one(args)
        @has_one = format_args(args)
      end

      def provided_has_one
        @has_one
      end

      class_methods do
      end
    end
  end
end
