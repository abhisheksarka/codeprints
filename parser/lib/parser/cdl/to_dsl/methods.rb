module Parser
  module Cdl
    module ToDsl
      class Methods < Base
        def method_type
          raise NotImplementedError
        end

        def scan!
          @scans = extract_scans(/#{method_type}\s+{.*}/m)
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
