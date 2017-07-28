class RmDateAddDatestamp < ActiveRecord::Migration[5.1]
  def change
    remove_column :scores, :date
    add_column :scores, :created_at, :datetime
    add_column :scores, :upated_at, :datetime
  end
end
