class AddColumnToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :reviewer_id, :integer
    add_column :reviews, :reviewee_id, :integer
    
    add_index :reviews, :reviewer_id
    add_index :reviews, :reviewee_id
    add_index :reviews, [:reviewer_id, :reviewee_id]
  end
end
