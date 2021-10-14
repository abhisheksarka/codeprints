module Parser
  module Cdl
    module ToDsl
      class Class < Base
        def scan!
          @scans = extract_scans(/class\s+\w+\s*/)
        end

        def replace!
          @scans.each do |scan|
            cdl.sub!(scan[0], "klass(:#{scan[0].split(' ')[1]})")
          end
        end
      end
    end
  end
end
