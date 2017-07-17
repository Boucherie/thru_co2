class FixDateAgain < ActiveRecord::Migration[5.1]
  def change
    change_column :scores, :date, :bigint
  end
end
