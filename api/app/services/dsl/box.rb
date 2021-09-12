# cdl = %{
#   component User {
#     prop id, Integer
#     prop name, String
#   }

#   component Amount {
#     prop currency, String, value: 'usd'
#     prop unit_value, Integer, value: 2000
#   }

#   component Charge {
#     prop amount, Amount
#   }
# }
# namespace = "A"
# box = Dsl::Box.new(cdl, namespace)
# box.run!

module Dsl
  class Box
    attr_accessor :cdl,
                  :dsl,
                  :module_ref

    def initialize(cdl, namespace)
      @cdl = cdl
      @dsl = Cdl::ToDsl.run!(cdl)

      @module_ref = Dsl.const_set(namespace, module_code)
    end

    def run!
      module_ref.run!(dsl)
    end

    def module_code
      Module.new do
        def self.run!(dsl)
          main = self.const_get(:Main).new
          main.module_ref = self
          main.run!(dsl)
        end

        self.const_set(
          :Main,
          Class.new do
            include ComponentProvider

            attr_accessor :module_ref

            def run!(dsl)
              instance_eval(dsl)
            end

            def self.const_missing(name)
              "#{module_name}::#{name}".constantize
            end

            def self.module_name
              ancestors[1].to_s.split('::')[0..-2].join('::')
            end
          end
        )
      end
    end
  end
end
