module Parser
  module Dsl
    module BelongsToProvider
      extend ActiveSupport::Concern

      included do
      end

      def belongs_tos
        @belongs_tos ||= {}.with_indifferent_access
      end

      def belongs_to(name, type, opts = {})
        belongs_tos[name] = BelongsTo.new(name, type, opts)
      end

      class_methods do
      end
    end
  end
end
