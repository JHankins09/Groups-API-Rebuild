# frozen_string_literal: true

class Membership < ApplicationRecord
  belongs_to :user, inverse_of: :memberships
  belongs_to :group, inverse_of: :memberships
end
