module Cdl
  module ToDsl
    class TypeDeclaration < Base
      def scan!
        @scans = extract_scans(/type\s\w+/)
      end

      def validate!
        raise 'DuplicateTypes' if diff.present?
      end

      def replace!
        @scans.each do |scan|
          cdl.sub!(scan[0], "type(:#{scan[0].split(' ')[-1]})")
        end
      end

      private

      def diff
        @scans.count != @scans.uniq.count
      end
    end
  end
end
