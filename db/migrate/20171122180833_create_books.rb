class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.integer :pages
      t.string :coverpath
      t.integer :category_id
      t.integer :author_id
      

      t.timestamps null: false
    end
  end
end
