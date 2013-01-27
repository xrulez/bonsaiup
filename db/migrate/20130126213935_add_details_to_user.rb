class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
    add_column :users, :confirmedPassword, :string
  end
end
