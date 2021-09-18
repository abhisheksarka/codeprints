module Parser
  module Cdl
    module ToDsl
      class Else < Base
        def scan!
          @scans = extract_scans(/else\s*{/)
        end

        def replace!
          @scans.each do |scan|
            cdl.sub!(scan[0], scan[0].dup.sub!('else', '_else_'))
          end
        end
      end
    end
  end
end
