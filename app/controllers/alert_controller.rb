class AlertController < ApplicationController
  def page
    @time_tables = TimeTable.fetch
  end
end
