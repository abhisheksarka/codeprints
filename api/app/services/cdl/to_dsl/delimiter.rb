module Cdl
  module ToDsl
    class Delimiter < Base
      def scan!
        extract_scans(/type\s\w+\s+{.*}/)
      end
      def replace!; end
    end
  end
end
