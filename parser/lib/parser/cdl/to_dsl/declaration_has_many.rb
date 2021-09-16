module Parser
  module Cdl
    module ToDsl
      class DeclarationHasMany < DeclarationProp
        def prop_type
          'has_many'
        end
      end
    end
  end
end
