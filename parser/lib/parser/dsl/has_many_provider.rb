module Parser
  module Dsl
    module HasManyProvider
      extend ActiveSupport::Concern
      include Util

      included do
      end

      def has_many(args)
        @has_many = format_args(args)
      end

      def provided_has_many
        @has_many
      end

      class_methods do
      end
    end
  end
end
