module Cdl
  module ToDsl
    class DeclarationProp < Base
      def scan!
        @scans = extract_scans(/#{prop_type}\s\w+/)
      end

      def replace!
        @scans.each do |scan|
          cdl.sub!(scan[0], "#{prop_type} :#{scan[0].split(' ')[-1]}")
        end
      end

      def prop_type
        'prop'
      end
    end
  end
end
