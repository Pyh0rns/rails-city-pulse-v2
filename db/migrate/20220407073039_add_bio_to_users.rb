class AddBioToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bio, :string
  end
end
