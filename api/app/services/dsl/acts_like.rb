require 'active_support/concern'

module Dsl
  class ActsLike
    attr_accessor :parent_name,
                  :opts

    def initialize(parent_name, opts = {})
      @parent_name = parent_name
      @opts = opts
    end
  end
end
