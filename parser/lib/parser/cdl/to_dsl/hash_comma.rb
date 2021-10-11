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
            substr = cdl[scan[1]..-1]
            replace_with = substr.dup.sub!(s, "#{s},")

            cdl.sub!(substr, replace_with)
          end
        end
      end
    end
  end
end
