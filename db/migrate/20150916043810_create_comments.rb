class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :title
      t.text :content
      t.string :author
      t.references :post, index: true, foreign_key: true
    end
  end
end
