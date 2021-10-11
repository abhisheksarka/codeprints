module Parser
  module Cdl
    module ToDsl
      class Props < Base
        def scan!
          @scans = extract_scans(/props\s+{.*}/m)
        end

        def replace!
          @scans.each do |scan|
            s = scan[0]
            cdl.sub!(s, s.sub('{', '({').sub('}', '})'))
          end
        end
      end
    end
  end
end
