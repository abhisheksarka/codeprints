module Parser
  module Dsl
    module BehaviourProvider
      extend ActiveSupport::Concern

      included do
      end

      def behaviours
        @behaviours ||= {}.with_indifferent_access
      end

      def behaviour(name, opts = {}, &block)
        const = module_ref.const_set(
          name,
          Class.new(Dsl::Behaviour) do
            def initialize(name, opts, &block)
              super(name, opts, &block)
            end
          end
        )
        behaviours[name] = const.new(name, opts, &block)
      end

      class_methods do
      end
    end
  end
end
