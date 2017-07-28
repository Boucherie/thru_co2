class ChangeToDistanceInKilometers < ActiveRecord::Migration[5.1]
  def change
    rename_column :scores, :distance, :distanceInKilometers
  end
end
