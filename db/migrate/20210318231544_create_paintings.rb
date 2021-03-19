class CreatePaintings < ActiveRecord::Migration[6.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :image
      t.string :artist

      t.timestamps
    end
  end
end
