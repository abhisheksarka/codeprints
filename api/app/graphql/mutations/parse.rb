module Mutations
  class Parse < Mutations::BaseMutation
    argument :cdl, String, required: true

    field :response, GraphQL::Types::JSON, null: true

    def resolve(cdl:)
      {
        response: (ParserEval.run!(cdl, :Ns) rescue nil)
      }
    end
  end
end
