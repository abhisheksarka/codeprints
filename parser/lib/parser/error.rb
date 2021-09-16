module Parser
  module Error
    class Base < StandardError
      def initialize
        super(self.class.to_s.demodulize)
      end

      def message
        I18n.t("errors.#{self.class.name.demodulize.underscore}")
      end
    end

    class MultipleInheritanceNotAllowed < Base; end
    class OnlyBehavioursAllowed < Base; end
  end
end
