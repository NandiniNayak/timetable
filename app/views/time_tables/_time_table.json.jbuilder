json.extract! time_table, :id, :week, :date, :day, :start_time, :end_time, :period, :room_number, :subject, :teacher, :equipment, :user_id, :created_at, :updated_at
json.url time_table_url(time_table, format: :json)