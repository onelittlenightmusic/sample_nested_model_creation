class CreateBrotherhoods < ActiveRecord::Migration[5.0]
  def change
    create_table :brotherhoods do |t|
      t.integer :parent_id
      t.integer :parent2_id

      t.timestamps
    end
  end
end
