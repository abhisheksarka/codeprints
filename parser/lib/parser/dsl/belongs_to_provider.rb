module Parser
  module Dsl
    module BelongsToProvider
      extend ActiveSupport::Concern

      included do
      end

      def belongs_to(args)
        @belongs_to = args
      end

      def provided_belongs_to
        @belongs_to
      end

      class_methods do
      end
    end
  end
end
