module Parser
  module Cdl
    module ToDsl
      class Method < Base
        def scan!
          @scans = extract_scans(/method\s\w+/)
        end

        def replace!
          @scans.each do |scan|
            cdl.sub!(scan[0], "_method(:#{scan[0].split(' ')[-1]})")
          end
        end
      end
    end
  end
end
