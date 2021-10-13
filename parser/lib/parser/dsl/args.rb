module Parser
  module Dsl
    class Args < HashWithIndifferentAccess
      def initialize(*args)
        super(*args)
        validate!
      end

      def validate!
        values.each do |value|
          raise Error::UndefinedType unless Dsl.supported_types.include?(value)
        end
      end
    end
  end
end
