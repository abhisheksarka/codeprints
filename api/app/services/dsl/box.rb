# str = %{
#   component :User do
#     prop :id, Integer
#     prop :name, String
#   end

#   component :Amount do
#     prop :currency, String, value: 'usd'
#     prop :unit_value, Integer, value: 2000
#   end
# }
# box = Dsl::Box.new(str)
# box.run!

module Dsl
  class Box
    include ComponentProvider

    attr_accessor :str

    def initialize(str)
      @str = str
    end

    def run!
      eval(str)
    end
  end
end
