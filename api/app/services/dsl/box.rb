# str = %{
#   component :User do
#     prop :id, Integer
#     prop :name, String
#   end

#   component :Amount do
#     prop :currency, String, value: 'usd'
#     prop :unit_value, Integer, value: 2000
#   end

#   component :Charge do
#     prop :amount, Amount
#   end
# }
# namespace = "A"
# box = Dsl::Box.new(str, namespace)
# box.run!

module Dsl
  class Box
    attr_accessor :str,
                  :module_ref

    def initialize(str, namespace)
      @str = str
      @module_ref = Dsl.const_set(namespace, module_code)
    end

    def run!
      module_ref.run!(str)
    end

    def module_code
      Module.new do
        def self.run!(str)
          main = self.const_get(:Main).new
          main.module_ref = self
          main.run!(str)
        end

        self.const_set(
          :Main,
          Class.new do
            include ComponentProvider

            attr_accessor :module_ref

            def run!(str)
              instance_eval(str)
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
