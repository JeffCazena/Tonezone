class AddColumnsToItem < ActiveRecord::Migration
  def change
  	change_table :items do |t|
  		t.string :name
  		t.string :description
  	end
  end
end
