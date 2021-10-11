module Parser
  module Cdl
    module ToDsl
      class HashComma < Base
        def scan!
          @scans = extract_scans(/\w+:\s*\w+/)
        end

        def replace!
          @scans.each do |scan|
            s = scan[0]
            cdl.sub!(s, "#{s},")
          end
        end
      end
    end
  end
end
