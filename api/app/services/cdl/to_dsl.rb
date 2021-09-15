module Cdl
  module ToDsl
    def self.run!(str)
      [
        Component,
        DeclarationProp,
        DeclarationHasOne,
        DeclarationHasMany,
        DeclarationBelongsTo
      ].map do |r|
        str = r.new(str).run!
      end.last
    end
  end
end
