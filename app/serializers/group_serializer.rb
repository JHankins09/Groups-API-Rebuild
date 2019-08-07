# frozen_string_literal: true

class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name,
             :group_type, :group_description,
             :group_admin, :users,
             :editable

  belongs_to :administrator

  def editable
    scope == object.administrator
  end
end
