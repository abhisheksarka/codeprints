require 'active_support/concern'

module Dsl
  module HasOneProvider
    extend ActiveSupport::Concern

    included do
    end

    def has_ones
      @has_ones ||= {}.with_indifferent_access
    end

    def has_one(name, type, opts = {})
      has_ones[name] = HasOne.new(name, type, opts)
    end

    class_methods do
    end
  end
end
