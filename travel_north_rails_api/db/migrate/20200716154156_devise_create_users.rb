# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name,              null: false, default: ""
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :password_digest

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
  end
end
