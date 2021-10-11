module Parser
  module Dsl
    class Klass
      include PropsProvider

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
