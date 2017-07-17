class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :score
      t.integer :distance
      t.integer :date
      t.references :user, foreign_key: true
    end
  end
end
