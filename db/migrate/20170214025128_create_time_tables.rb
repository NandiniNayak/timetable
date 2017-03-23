class CreateTimeTables < ActiveRecord::Migration[5.0]
  def change
    create_table :time_tables do |t|
      t.string :week
      t.date :date
      t.string :day
      t.time :start_time
      t.time :end_time
      t.string :period
      t.string :room_number
      t.string :subject
      t.string :teacher
      t.string :equipment
      t.references :user, foreign_key: true, unqiue: true

      t.timestamps
    end
  end
end
