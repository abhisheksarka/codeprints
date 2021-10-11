require_relative './to_dsl/base'
require_relative './to_dsl/class'
require_relative './to_dsl/methods'
require_relative './to_dsl/props'
require_relative './to_dsl/has_many'
require_relative './to_dsl/has_one'
require_relative './to_dsl/belongs_to'
require_relative './to_dsl/hash_comma'


module Parser
  module Cdl
    module ToDsl
      def self.run!(str)
        [
          Class,
          HashComma,
          Props,
          HasOne,
          HasMany,
          BelongsTo
        ].map do |r|
          str = r.new(str).run!
        end.last
      end
    end
  end
end
