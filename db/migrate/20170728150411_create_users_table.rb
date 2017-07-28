class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
        t.string :name
        t.string :email
        t.string :password_digest
        t.references :team, foreign_key: true
    end
  end
end
