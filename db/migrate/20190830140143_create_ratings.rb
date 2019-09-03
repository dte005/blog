class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :post, foreign_key: true
      t.integer :star
      t.string :description

      t.timestamps
    end
  end
end
