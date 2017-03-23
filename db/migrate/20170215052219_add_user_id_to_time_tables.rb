class AddUserIdToTimeTables < ActiveRecord::Migration[5.0]
  def change
    add_column :time_tables, :user_id, :integer , unique: true , foreign_key: true
  end
end
