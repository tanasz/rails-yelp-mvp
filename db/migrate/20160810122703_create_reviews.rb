class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :content, :null => false
      t.integer :rating, :null => false

      t.timestamps
    end
  end
end
