module Cdl
  module ToDsl
    class Component < Base
      def scan!
        @scans = extract_scans(/component\s\w+/)
      end

      def replace!
        @scans.each do |scan|
          cdl.sub!(scan[0], "component(:#{scan[0].split(' ')[-1]})")
        end
      end
    end
  end
end
