class AddItempicToItems < ActiveRecord::Migration
  def change
    add_column :items, :itempic, :string
  end
end
