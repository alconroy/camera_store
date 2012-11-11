# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121109101217) do

  create_table "camera_catalogues", :force => true do |t|
    t.string   "brand"
    t.string   "camera_type"
    t.string   "megapixels_range"
    t.string   "optical_zoom"
    t.string   "lcd_screen_size"
    t.string   "colour"
    t.decimal  "price"
    t.string   "model_code"
    t.text     "model_description"
    t.string   "product_image"
    t.integer  "stock_level"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
