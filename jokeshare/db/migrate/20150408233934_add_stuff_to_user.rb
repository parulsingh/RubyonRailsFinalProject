class AddStuffToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :major, :string
    add_column :users, :email, :string
  end
end
