class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :author

      t.timestamps
    end
  end
end