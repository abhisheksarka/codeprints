module Parser
  module Cdl
    module ToDsl
      class HasMany < Methods
        def method_type
          :has_many
        end
      end
    end
  end
end
