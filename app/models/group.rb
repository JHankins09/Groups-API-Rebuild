# frozen_string_literal: true

class Group < ApplicationRecord
  validates :group_name, presence: true
  validates :group_admin, presence: true

  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships

  belongs_to :administrator,
             class_name: 'User',
             foreign_key: 'user_id',
             inverse_of: 'organizations'
end
