class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, index: true
      t.string :email
      t.string :password_digest
      t.string :remember_token
    end
  end
end
