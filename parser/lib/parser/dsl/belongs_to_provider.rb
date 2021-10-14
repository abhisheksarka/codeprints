module Parser
  module Dsl
    module BelongsToProvider
      include Util

      def belongs_to(args)
        @belongs_to = format_args(args)
      end

      def provided_belongs_to
        @belongs_to
      end
    end
  end
end
