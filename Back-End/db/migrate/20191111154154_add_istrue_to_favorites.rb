class AddIstrueToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :istrue, :boolean
  end
end
