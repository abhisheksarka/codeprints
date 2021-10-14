module Parser
  module Dsl
    module DescProvider
      extend ActiveSupport::Concern
      include Util

      included do
      end

      def desc(str)
        @desc = Dsl.validate_value!(str, String)
      end

      def provided_desc
        @desc
      end

      class_methods do
      end
    end
  end
end
