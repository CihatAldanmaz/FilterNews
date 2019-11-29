class AddSlugToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :slug, :string
    add_index :favorites, :slug, unique: true
  end
end
