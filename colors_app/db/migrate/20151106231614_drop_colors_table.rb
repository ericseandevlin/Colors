class DropColorsTable < ActiveRecord::Migration
  def change
    drop_table :colors_tables
  end
end
