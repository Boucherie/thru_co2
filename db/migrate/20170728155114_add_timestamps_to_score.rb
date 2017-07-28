class AddTimestampsToScore < ActiveRecord::Migration[5.1]
  def change
    add_timestamps :scores, default: DateTime.now
    end
  end
end
