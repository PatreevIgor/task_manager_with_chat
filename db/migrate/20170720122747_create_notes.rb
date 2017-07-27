# frozen_string_literal: true

class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.belongs_to :list, index: true
      t.string :title

      t.timestamps
    end
  end
end
