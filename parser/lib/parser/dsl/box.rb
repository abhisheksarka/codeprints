# cdl = %{
#   behaviour Payable {
#     method pay {
#       args amount: Integer
#       returns Array
#
#       if (false) {}
#       if (true) {} else {}
#       if('x is 1') {}
#     }
#   }

#   component Charge {
#     acts_like Payable
#     has_one amount, Amount
#   }

#   component User {
#     prop id, Integer
#     prop name, String
#     has_many charges, Charge
#   }

#   component Amount {
#     prop currency, String, value: 'usd'
#     prop unit_value, Integer, value: 2000
#     belongs_to charge, Charge
#   }
# }
# box = Parser::Dsl::Box.new(cdl, "A")
# box.run!

module Parser
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

      def main
        module_ref.main
      end

      def module_code
        Module.new do
          def self.run!(dsl)
            @main = const_get(:Main).new
            @main.module_ref = self
            @main.run!(dsl)
          end

          def self.main
            @main
          end

          self.const_set(
            :Main,
            Class.new do
              include ComponentProvider
              include BehaviourProvider

              attr_accessor :module_ref

              def run!(dsl)
                # First let the components
                # be declared, and make them available
                # for usage by component blocks
                instance_eval(dsl)

                # At this point all decalared components
                # will be available as constants and hence
                # will be available for use inside the component
                # blocks. So order of component declaration and
                # usage does not matter
                a = (components.values + behaviours.values)
                a.each(&:evaluate_block)
                a.each(&:evaluate_method_blocks)
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
end