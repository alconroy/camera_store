class CreateCameraCatalogues < ActiveRecord::Migration
  def change
    create_table :camera_catalogues do |t|
      t.string :brand
      t.string :camera_type
      t.string :megapixels_range
      t.string :optical_zoom
      t.string :lcd_screen_size
      t.string :colour
      t.decimal :price
      t.string :model_code
      t.text :model_description
      t.string :product_image
      t.integer :stock_level

      t.timestamps
    end
  end
end
