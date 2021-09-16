module Parser
  module Cdl
    module ToDsl
      class DeclarationBelongsTo < DeclarationProp
        def prop_type
          'belongs_to'
        end
      end
    end
  end
end
