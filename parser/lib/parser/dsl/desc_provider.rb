module Parser
  module Dsl
    module DescProvider
      include Util

      def desc(str)
        @desc = Dsl.validate_value!(str, String)
      end

      def provided_desc
        @desc
      end
    end
  end
end
