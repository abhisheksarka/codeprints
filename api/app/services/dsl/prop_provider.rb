require 'active_support/concern'

module Dsl
  module PropProvider
    extend ActiveSupport::Concern

    included do
    end

    def props
      @props ||= {}.with_indifferent_access
    end

    def prop(name, type, opts = {})
      props[name] = Prop.new(name, type, opts)
    end

    class_methods do
    end
  end
end
