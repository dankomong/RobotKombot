class AddImageUrlToBosses < ActiveRecord::Migration[5.2]
  def change
    add_column :bosses, :image_url, :string
  end
end
