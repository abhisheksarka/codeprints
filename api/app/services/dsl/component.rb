require 'active_support/concern'

module Dsl
  class Component
    include PropProvider

    attr_accessor :name,
                  :opts

    def initialize(name, opts = {}, &block)
      @name = name
      @opts = opts
      instance_eval &block
    end
  end
end
