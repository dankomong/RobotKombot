class AddImageUrlToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :image_url, :string
  end
end
