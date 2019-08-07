# frozen_string_literal: true

class MembershipSerializer < ActiveModel::Serializer
  has_one :user
  has_one :group
end
