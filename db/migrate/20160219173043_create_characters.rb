class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.string :one_uniq_thing

      t.timestamps null: false
    end
  end
end
