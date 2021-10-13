[
  :props,
  :methods,
  :belongs_to,
  :has_many,
  :has_one,
  :klass
].each do |dsl|
  require_relative "./dsl/#{dsl}_provider"
end

[
  :klass,
  :args
].each do |dsl|
  require_relative "./dsl/#{dsl}"
end

require_relative './dsl/box'

module Parser
  module Dsl
    def self.supported_types
      [
        String,
        Integer,
        Float
      ]
    end
  end
end
