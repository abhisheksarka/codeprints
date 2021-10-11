module Parser
  module Dsl
    module HasManyProvider
      extend ActiveSupport::Concern

      included do
      end

      def has_many(args)
        @has_many = args
      end

      def provided_has_many
        @has_many
      end

      class_methods do
      end
    end
  end
end
