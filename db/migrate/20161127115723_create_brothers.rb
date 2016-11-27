class CreateBrothers < ActiveRecord::Migration[5.0]
  def change
    create_table :brothers do |t|
      t.string :name
      t.references :parent, foreign_key: true

      t.timestamps
    end
  end
end
