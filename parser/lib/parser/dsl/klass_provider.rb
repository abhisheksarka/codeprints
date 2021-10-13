module Parser
  module Dsl
    module KlassProvider
      extend ActiveSupport::Concern

      included do
      end

      def klasses
        @klasses ||= {}.with_indifferent_access
      end

      def klass(name, opts = {}, &block)
        const = module_ref.const_set(
          name,
          Class.new(Dsl::Klass) do
            def initialize(name, opts, &block)
              super(name, opts, &block)
            end

            def method_missing(name, *args, &block)
              register_method(name, args[0], &block)
            end
          end
        )
        klasses[name] = const.new(name, opts, &block)
      end

      class_methods do
      end
    end
  end
end
