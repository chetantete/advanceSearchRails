class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commentor
      t.text :body
      t.string :feedback
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end