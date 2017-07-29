class AddValuesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :phone, :string
    add_column :users, :github, :string
    add_column :users, :linkedin, :string
    add_column :users, :website, :string
  end
end
