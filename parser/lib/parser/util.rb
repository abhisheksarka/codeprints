module Parser
  module Util
    def format_args(args)
      Dsl::Args.new(args).stringify_values!
    end
  end
end
