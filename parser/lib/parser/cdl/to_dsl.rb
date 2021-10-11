require_relative './to_dsl/base'
require_relative './to_dsl/class'
require_relative './to_dsl/props'
require_relative './to_dsl/hash_comma'

module Parser
  module Cdl
    module ToDsl
      def self.run!(str)
        [
          Class,
          HashComma,
          Props
        ].map do |r|
          str = r.new(str).run!
        end.last
      end
    end
  end
end
