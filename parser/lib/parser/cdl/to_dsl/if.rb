module Parser
  module Cdl
    module ToDsl
      class If < Base
        def scan!
          @scans = extract_scans(/if\s*\(/)
        end

        def replace!
          @scans.each do |scan|
            cdl.sub!(scan[0], scan[0].dup.sub!('if', '_if_'))
          end
        end
      end
    end
  end
end
