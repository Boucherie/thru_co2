class FixDate < ActiveRecord::Migration[5.1]
  def change
    change_column :scores, :date, :datetime
  end
end
