# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :user
  validates :group_name, :group_admin,
            :user, presence: true
end
