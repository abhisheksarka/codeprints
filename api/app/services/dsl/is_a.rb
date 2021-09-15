require 'active_support/concern'

module Dsl
  class IsA
    attr_accessor :parent_name,
                  :opts

    def initialize(parent_name, opts = {})
      @parent_name = parent_name
      @opts = opts
    end
  end
end
