require 'active_support/concern'

module Dsl
  module ComponentProvider
    extend ActiveSupport::Concern

    included do
    end

    def components
      @components ||= {}.with_indifferent_access
    end

    def component(name, opts = {}, &block)
      const = module_ref.const_set(
        name,
        Class.new(Dsl::Component) do
          def initialize(name, opts, &block)
            super(name, opts, &block)
          end
        end
      )
      components[name] = const.new(name, opts, &block)
    end

    class_methods do
    end
  end
end
