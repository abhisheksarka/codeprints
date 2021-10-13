module Parser
  module Dsl
    class Args < HashWithIndifferentAccess
      def initialize(*args)
        super(*args)
        validate!
      end

      def validate!
        values.each do |type|
          Dsl.validate_type!(type)
        end
      end
    end
  end
end
