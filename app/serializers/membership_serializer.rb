# frozen_string_literal: true

class MembershipSerializer < ActiveModel::Serializer
  attributes :contact_email, :id

  has_one :user
  has_one :group
end
