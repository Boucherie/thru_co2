class FixDateAgainAgain < ActiveRecord::Migration[5.1]
  def change
    change_column :scores, :date, :string
  end
end
