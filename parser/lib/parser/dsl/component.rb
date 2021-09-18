module Parser
  module Dsl
    class Component
      include PropProvider
      include HasOneProvider
      include HasManyProvider
      include BelongsToProvider
      include IsAProvider
      include ActsLikeProvider
      include MethodProvider

      attr_accessor :name,
                    :opts,
                    :block

      def initialize(name, opts = {}, &block)
        @name = name
        @opts = opts.with_indifferent_access
        @block = proc &block
      end

      def evaluate_block
        instance_eval &block
      end
    end
  end
end
