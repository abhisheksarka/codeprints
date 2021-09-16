require_relative './to_dsl/base'
require_relative './to_dsl/behaviour'
require_relative './to_dsl/component'
require_relative './to_dsl/declaration_prop'
require_relative './to_dsl/declaration_acts_like'
require_relative './to_dsl/declaration_belongs_to'
require_relative './to_dsl/declaration_has_many'
require_relative './to_dsl/declaration_has_one'

module Parser
  module Cdl
    module ToDsl
      def self.run!(str)
        [
          Component,
          Behaviour,
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
end
