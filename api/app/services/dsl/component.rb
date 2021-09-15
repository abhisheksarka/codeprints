require 'active_support/concern'

module Dsl
  class Component
    include PropProvider
    include HasOneProvider
    include HasManyProvider
    include BelongsToProvider

    attr_accessor :name,
                  :opts,
                  :block

    def initialize(name, opts = {}, &block)
      @name = name
      @opts = opts
      @block = proc &block
    end

    def evaluate_block
      instance_eval &block
    end
  end
end