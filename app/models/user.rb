# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication

  has_many :examples

  has_many :organizations,
           class_name: 'Group',
           inverse_of: 'administrator'

  has_many :memberships
  has_many :groups, through: :memberships

  # has_many :groups

end
