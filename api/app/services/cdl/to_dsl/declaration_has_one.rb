module Cdl
  module ToDsl
    class DeclarationHasOne < DeclarationProp
      def prop_type
        'has_one'
      end
    end
  end
end
