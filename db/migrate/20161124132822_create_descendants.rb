class CreateDescendants < ActiveRecord::Migration[5.0]
  def change
    create_table :descendants do |t|
      t.string :name
      t.references :child, foreign_key: true

      t.timestamps
    end
  end
end
