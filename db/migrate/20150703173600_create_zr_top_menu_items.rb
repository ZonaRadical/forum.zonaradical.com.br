class CreateZrTopMenuItems < ActiveRecord::Migration
  def change
    create_table :zr_top_menu_items do |t|
      t.belongs_to :zr_top_menu, index: true
      t.integer :parent_id, index: true
      t.integer :sort_number
      t.string :key, null: false, index: true, unique: true
      t.string :text_en
      t.string :text_pt
      t.string :url
    end
  end
end
