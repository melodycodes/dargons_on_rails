class DropRaceTable < ActiveRecord::Migration
  def change
    drop_table :races
  end
end
