module Parser
  module Dsl
    class HasOne
      attr_accessor :name,
                    :type,
                    :opts

      def initialize(name, type, opts = {})
        @name = name
        @type = type
        @opts = opts
      end
    end
  end
end
