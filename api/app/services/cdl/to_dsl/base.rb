module Cdl
  module ToDsl
    class Base
      attr_accessor :cdl,
                    :scans

      def initialize(cdl)
        @cdl = cdl.dup
        clean!
      end

      def extract_scans(regex)
        @scans = []
        cdl.scan(regex) do |c|
          @scans << [c, $~.offset(0)[0]]
        end
        @scans
      end

      def run!
        scan!
        replace!
        cdl
      end

      def clean!
        cdl.gsub!("\n", ';')
      end
    end
  end
end
