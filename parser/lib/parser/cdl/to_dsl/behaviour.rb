module Parser
  module Cdl
    module ToDsl
      class Behaviour < Base
        def scan!
          @scans = extract_scans(/behaviour\s\w+/)
        end

        def replace!
          @scans.each do |scan|
            cdl.sub!(scan[0], "behaviour(:#{scan[0].split(' ')[-1]})")
          end
        end
      end
    end
  end
end
