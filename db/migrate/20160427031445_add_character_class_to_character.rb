class AddCharacterClassToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :character_class, :string
    add_column :characters, :hp, :integer
    add_column :characters, :ac, :integer
    add_column :characters, :pd, :integer
    add_column :characters, :md, :integer
    add_column :characters, :recovery_dice_total, :integer
    add_column :characters, :recovery_dice_used, :integer
    add_column :characters, :race, :string
  end
end
