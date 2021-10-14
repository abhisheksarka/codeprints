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

      def stringify_values!
        self.deep_merge(self) {|_,_,v| v.to_s}
      end
    end
  end
end
