class DeviseCreateItems < ActiveRecord::Migration
  def change
    create_table(:items) do |t|
      t.datetime :remember_created_at

      t.timestamps
    end
  end
end
