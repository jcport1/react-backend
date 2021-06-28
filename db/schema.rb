ActiveRecord::Schema.define(version: 2021_03_20_001552) do


  enable_extension "plpgsql"

  create_table "paintings", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "artist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "century"
    t.string "culture"
    t.string "medium"
    t.string "dimensions"
  end

end
