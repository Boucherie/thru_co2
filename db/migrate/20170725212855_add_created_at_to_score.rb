class AddCreatedAtToScore < ActiveRecord::Migration[5.1]
  def change
    add_column :scores, :created_at, :datetime
  end
end
