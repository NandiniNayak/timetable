require 'test_helper'

class TimeTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_table = time_tables(:one)
  end

  test "should get index" do
    get time_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_time_table_url
    assert_response :success
  end

  test "should create time_table" do
    assert_difference('TimeTable.count') do
      post time_tables_url, params: { time_table: { date: @time_table.date, day: @time_table.day, end_time: @time_table.end_time, equipment: @time_table.equipment, period: @time_table.period, room_number: @time_table.room_number, start_time: @time_table.start_time, subject: @time_table.subject, teacher: @time_table.teacher, user_id: @time_table.user_id, week: @time_table.week } }
    end

    assert_redirected_to time_table_url(TimeTable.last)
  end

  test "should show time_table" do
    get time_table_url(@time_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_table_url(@time_table)
    assert_response :success
  end

  test "should update time_table" do
    patch time_table_url(@time_table), params: { time_table: { date: @time_table.date, day: @time_table.day, end_time: @time_table.end_time, equipment: @time_table.equipment, period: @time_table.period, room_number: @time_table.room_number, start_time: @time_table.start_time, subject: @time_table.subject, teacher: @time_table.teacher, user_id: @time_table.user_id, week: @time_table.week } }
    assert_redirected_to time_table_url(@time_table)
  end

  test "should destroy time_table" do
    assert_difference('TimeTable.count', -1) do
      delete time_table_url(@time_table)
    end

    assert_redirected_to time_tables_url
  end
end
