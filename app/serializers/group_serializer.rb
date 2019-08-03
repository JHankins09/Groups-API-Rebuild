# frozen_string_literal: true

class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name,
             :group_type, :group_description,
             :group_admin, :user,
             :editable

  def editable
    scope == object.user
  end
end
