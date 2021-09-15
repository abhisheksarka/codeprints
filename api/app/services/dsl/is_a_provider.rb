require 'active_support/concern'

module Dsl
  module IsAProvider
    extend ActiveSupport::Concern

    included do
    end

    def is_as
      @is_as ||= {}.with_indifferent_access
    end

    def is_a(parent_name, opts = {})
      raise Error::MultipleInheritanceNotAllowed if is_as.keys.count == 1

      is_as[parent_name] = IsA.new(parent_name, opts)
    end

    class_methods do
    end
  end
end
