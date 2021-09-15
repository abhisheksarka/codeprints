require 'active_support/concern'

module Dsl
  module ActsLikeProvider
    extend ActiveSupport::Concern

    included do
    end

    def acts_likes
      @acts_likes ||= {}.with_indifferent_access
    end

    def acts_like(parent_name, opts = {})
      raise Error::OnlyBehavioursAllowed if !parent_name.superclass.eql?(Dsl::Behaviour)

      acts_likes[parent_name] = ActsLike.new(parent_name, opts)
    end

    class_methods do
    end
  end
end
