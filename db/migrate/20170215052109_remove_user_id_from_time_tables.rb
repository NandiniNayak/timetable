class RemoveUserIdFromTimeTables < ActiveRecord::Migration[5.0]
  def change
    remove_reference :time_tables, :user, foreign_key: true
  end
end
