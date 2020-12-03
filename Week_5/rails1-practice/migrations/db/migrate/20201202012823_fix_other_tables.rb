class FixOtherTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :email
    add_column :users, :username, :string
    remove_column :users, :bio

    remove_column :videos, :name
    add_column :videos, :title, :string

    add_index :videos, :uploader_id
  end
end
