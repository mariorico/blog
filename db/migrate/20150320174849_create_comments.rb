class CreateComments < ActiveRecord::Migration
  def change
    drop_table :comments
    create_table :comments do |t|
      t.string :commenter
      t.text :body
 
      # this line adds an integer column called `article_id`.
      t.references :article, index: true
 
      t.timestamps null: false
    end
  end
end