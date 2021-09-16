module Parser
  module Dsl
    module HasManyProvider
      extend ActiveSupport::Concern

      included do
      end

      def has_manys
        @has_manys ||= {}.with_indifferent_access
      end

      def has_many(name, type, opts = {})
        has_manys[name] = HasMany.new(name, type, opts)
      end

      class_methods do
      end
    end
  end
end
