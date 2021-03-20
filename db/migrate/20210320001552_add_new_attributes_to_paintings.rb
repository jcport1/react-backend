class AddNewAttributesToPaintings < ActiveRecord::Migration[6.1]
  def change
    add_column :paintings, :century, :string
    add_column :paintings, :culture, :string
    add_column :paintings, :medium, :string
    add_column :paintings, :dimensions, :string
  end
end
