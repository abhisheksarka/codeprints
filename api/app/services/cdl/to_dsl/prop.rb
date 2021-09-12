module Cdl
  module ToDsl
    class Prop < Base
      def scan!
        @scans = extract_scans(/prop\s\w+/)
      end

      def replace!
        @scans.each do |scan|
          cdl.sub!(scan[0], "prop :#{scan[0].split(' ')[-1]}")
        end
      end
    end
  end
end
