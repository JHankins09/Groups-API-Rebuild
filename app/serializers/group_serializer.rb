# frozen_string_literal: true

class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name,
             :group_type, :group_description,
             :editable

  belongs_to :administrator
  # belongs_to :user

  def editable
    scope == object.administrator
  end
end
