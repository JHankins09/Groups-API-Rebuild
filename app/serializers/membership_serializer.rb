# frozen_string_literal: true

class MembershipSerializer < ActiveModel::Serializer
  attributes :contact_email

  has_one :user
  has_one :group
end
