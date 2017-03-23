class TimeTable < ApplicationRecord

  def self.fetch
      TimeTable.where('start_time <= ?',Time.now) && TimeTable.where('end_time >= ?',Time.now)
  end
end
