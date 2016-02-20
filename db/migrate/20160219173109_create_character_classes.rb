class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|

      t.timestamps null: false
    end
  end
end
