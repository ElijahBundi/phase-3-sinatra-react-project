class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :author_id
      t.integer :blog_id
      t.timestamps
    end
  end
end
