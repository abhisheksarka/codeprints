module Parser
  module Cdl
    module ToDsl
      class BelongsTo < Methods
        def method_type
          :belongs_to
        end
      end
    end
  end
end
