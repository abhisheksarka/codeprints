[
  :acts_like,
  :belongs_to,
  :has_many,
  :prop,
  :has_one,
  :is_a,
  :arguments,
  :returns,
  :method,
  :behaviour,
  :component
].each do |dsl|
  require_relative "./dsl/#{dsl}"
  require_relative "./dsl/#{dsl}_provider"
end

require_relative './dsl/box'

module Parser
  module Dsl
    def self.supported_types
      [
        String,
        Integer,
        Float,
        Boolean
      ]
    end
  end
end
