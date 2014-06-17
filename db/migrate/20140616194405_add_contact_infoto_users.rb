class AddContactInfotoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :phonenum, :integer
  	add_column :users, :address, :string
  end
end
