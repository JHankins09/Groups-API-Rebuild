# frozen_string_literal: true

class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :group_name, null: false, index: { unique: true}
      t.string :group_type, null: false
      t.string :group_description, null: false
      t.string :group_admin, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
