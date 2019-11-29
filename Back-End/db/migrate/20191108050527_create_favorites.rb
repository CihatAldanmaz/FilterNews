class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :description
      t.string :img_url
      t.string :date
      t.string :news_url
      t.integer :user_id

      t.timestamps
    end
  end
end
