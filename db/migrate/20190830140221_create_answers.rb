class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :rating, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
