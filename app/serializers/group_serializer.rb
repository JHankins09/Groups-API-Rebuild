# frozen_string_literal: true

class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name,
             :group_type, :group_description,
             :editable
  belongs_to :administrators

  def editable
    scope == object.user
  end
end

# belongs_to :user
