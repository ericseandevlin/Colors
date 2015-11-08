class CreateColorsTable < ActiveRecord::Migration
  def change
    create_table :colors_tables do |t|
      t.string  :color_name
      t.string  :color_info

      t.timestamps null: false
    end
  end
end
