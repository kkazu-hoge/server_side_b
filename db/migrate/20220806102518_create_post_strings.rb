class CreatePostStrings < ActiveRecord::Migration[6.1]
  def change
    create_table :post_strings do |t|
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
