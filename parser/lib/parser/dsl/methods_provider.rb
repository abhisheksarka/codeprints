module Parser
  module Dsl
    module MethodsProvider
      extend ActiveSupport::Concern

      included do
      end

      def register_method(name, args = {})
        @methods ||= {}.with_indifferent_access
        @methods[name] = {
          args: Args.new(args || {})
        }
      end

      def provided_methods
        @methods ||= {}.with_indifferent_access
      end

      class_methods do
      end
    end
  end
end
