class AddTimestampsToScore < ActiveRecord::Migration[5.1]
  def change
    change_table :scores do |t|
      t.datetime
    end
  end
end
