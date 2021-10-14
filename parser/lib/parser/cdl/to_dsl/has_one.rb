module Parser
  module Cdl
    module ToDsl
      class HasOne < Methods
        def method_type
          :has_one
        end
      end
    end
  end
end
