class CameraCatalogue < ActiveRecord::Base
  attr_accessible :brand, :camera_type, :colour, :lcd_screen_size, :megapixels_range, :model_code, :model_description, :optical_zoom, :price, :product_image, :stock_level
end
