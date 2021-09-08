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
      components[name] = Component.new(name, opts, &block)
    end

    class_methods do
    end
  end
end
